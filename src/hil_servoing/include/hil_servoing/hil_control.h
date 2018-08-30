/*
 * lpetrich 01/07/18
 */

#ifndef HIL_CONTROL_H
#define HIL_CONTROL_H

#include <ros/ros.h>
#include <iostream>
#include <stdio.h>
#include <fstream>
#include <algorithm>
#include <Eigen/Dense>
#include <boost/timer.hpp>
#include "std_msgs/Bool.h"
#include "sensor_msgs/JointState.h"
#include "sensor_msgs/Joy.h"
#include "geometry_msgs/PoseStamped.h"
#include "geometry_msgs/Point.h"
#include "wam_control/misc_utilities.h"
#include "wam_control/arm_control.h"
#include "wam_control/bhand_control.h"
#include "hil_servoing/Teleop.h"
#include "hil_servoing/Error.h"
#include "hil_servoing/TrackPoint.h"
#include "hil_servoing/EndEffectorPoints.h"
#include "hil_servoing/hil_utilities.h"

// MoveIt!
#include <moveit/robot_model_loader/robot_model_loader.h>
#include <moveit/robot_model/robot_model.h>
#include <moveit/robot_state/robot_state.h>

// Robot state publishing
#include <moveit/robot_state/conversions.h>
#include <moveit_msgs/DisplayRobotState.h>

// Kinematics
#include <moveit_msgs/GetPositionIK.h>

class HILControl
{
  public:
	ArmControl *arm;
	BHandControl *bhand;
	bool reset;
	bool move_now;
	bool is_spread = false;
	bool grip_closed = false;
	bool teleop_move;
	int dof;
	int total_joints;
	double image_tol;
	double default_lambda;
	double lambda;
	double control_radius;
	double yaw_offset = 0.0;
	std::string robot_namespace;
	std::string msg;
	std::string prefix;
	std::string filename;
	std::vector<float> controller_axes;
	std::vector<int> controller_buttons;
	std::vector<bool> active_buttons_map = {1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0};
	std::vector<bool> active_axes_map = {1, 1, 1, 1, 0, 0};
	Eigen::Vector2d teleop_direction;
	Eigen::Vector3d temp_object_position{0.5, 0.0, 0.0};
	Eigen::Vector3d object_position{0.5, 0.0, 0.0};
	Eigen::Vector3d spherical_position{0.3, 0.0, 0.0}; // r, theta, phi
	Eigen::VectorXd previous_eef_position;
	Eigen::VectorXd previous_joint_positions;
	Eigen::MatrixXd previous_jacobian;
	Eigen::MatrixXd initial_jacobian;
	Eigen::MatrixXd jacobian;
	Eigen::MatrixXd jacobian_inverse;
	std::vector<int> active_joints = {1, 1, 1, 1, 1, 1, 1};
	HILControl(ros::NodeHandle nh);
	~HILControl();
	Eigen::VectorXd calculate_delta_q();
	Eigen::VectorXd calculate_target(const Eigen::VectorXd &pos, const Eigen::VectorXd &delta);
	Eigen::VectorXd calculate_step(const Eigen::VectorXd &current_error_value);
	Eigen::VectorXd calculate_rampdown_and_endtime(const Eigen::VectorXd &delta, const Eigen::VectorXd &current_velocities);
	bool convergence_check(const Eigen::VectorXd &current_error);
	Eigen::MatrixXd control_plane_vectors(Eigen::VectorXd &delta_q);
	void converge(double alpha, int max_iterations, bool continous_motion);
	void teleop_converge(double alpha, int max_iterations, bool continous_motion);
	int move_step(bool continous_motion);
	int teleop_move_step(bool continous_motion);
	int teleop_grasp_step();
	bool comput_IK(geometry_msgs::Pose p);
	bool broyden_update(double alpha);
	bool jacobian_estimate(double perturbation_delta);
	bool sphere_move(const Eigen::VectorXd &control_vec);
	void set_active_joints();
	void loop();
	void initialize();
	void teleop_grasp();
	robot_model_loader::RobotModelLoader robot_model_loader;
	robot_model::RobotModelPtr kinematic_model;
	robot_state::RobotStatePtr kinematic_state;

  private:
	// Callbacks
	ros::Subscriber error_sub;
	ros::Subscriber eef_sub;
	ros::Subscriber reset_sub;
	ros::Subscriber teleop_sub;
	ros::Subscriber joy_sub;
	Eigen::VectorXd singular_values;
	Eigen::VectorXd image_error_vector;
	Eigen::VectorXd image_eef_pos;
	bool new_error;
	bool new_eef;

	bool ready()
	{
		if (get_error().size() == 0 || get_eef_position().size() == 0)
		{
			std::cout << "please initialize trackers" << std::endl;
			return false;
		}
		else
		{
			return true;
		}
	}

	/// Moore-Penrose pseudoinverse - Implementation taken from: http://eigen.tuxfamily.org/bz/show_bug.cgi?id=257
	template <typename _Matrix_Type_>
	bool pseudoInverse(const _Matrix_Type_ &a, _Matrix_Type_ &result, double epsilon = std::numeric_limits<typename _Matrix_Type_::Scalar>::epsilon())
	{
		double max = 40.0;
		Eigen::JacobiSVD<Eigen::MatrixXd> svd = a.jacobiSvd(Eigen::ComputeThinU | Eigen::ComputeThinV);
		Eigen::VectorXd singular_values = svd.singularValues();
		double cond = (singular_values(0) / singular_values(singular_values.size() - 1));
		log(filename, "singular values: ", singular_values, false);
		log(filename, "condition number: ", cond, false);
		if (cond > max)
		{
			singular_values(singular_values.size() - 1) = 0;
			double cond = (singular_values(0) / singular_values(singular_values.size() - 2));
			std::cout << "condition number failed, setting smallest singular value to 0" << std::endl;
			log(filename, "new singular values: ", singular_values, false);
			log(filename, "new condition number: ", cond, false);
		}
		typename _Matrix_Type_::Scalar tolerance = epsilon * std::max(a.cols(), a.rows()) * singular_values.array().abs().maxCoeff();
		result = svd.matrixV() * _Matrix_Type_((singular_values.array().abs() > tolerance).select(singular_values.array().inverse(), 0)).asDiagonal() *
				 svd.matrixU().adjoint();
		return true;
	}

	Eigen::VectorXd get_error()
	{
		while (!new_error)
		{
			continue;
		}
		new_error = false;
		return image_error_vector;
	}

	Eigen::VectorXd get_eef_position()
	{
		while (!new_eef)
		{
			continue;
		} // TODO fix so doesn't get stuck in iteration 6
		new_eef = false;
		return image_eef_pos;
	}

	void error_cb(hil_servoing::Error::ConstPtr error)
	{
		hil_servoing::Error current_error = *error;
		int sz = current_error.error.size();
		Eigen::VectorXd e(sz);
		for (int i = 0; i < sz; ++i)
		{
			e[i] = current_error.error[i];
		}
		image_error_vector = e;
		new_error = true;
	}

	void eef_cb(hil_servoing::EndEffectorPoints::ConstPtr eef)
	{
		hil_servoing::EndEffectorPoints current_eef = *eef;
		Eigen::VectorXd eef_pos(current_eef.points.size() * 2);
		int j = 0;
		for (int i = 0; i < current_eef.points.size(); ++i)
		{
			eef_pos[j] = current_eef.points[i].x;
			eef_pos[j + 1] = current_eef.points[i].y;
			j += 2;
		}
		image_eef_pos = eef_pos;
		new_eef = true;
	}

	void reset_cb(std_msgs::Bool data)
	{
		bool b = data.data;
		if (b)
		{
			reset = true;
		}
	}

	// void move_cb(std_msgs::Bool data) {
	// 	bool b = data.data;
	// 	if (b) { move_now = true; }
	// 	else { move_now = false; }
	// }

	void teleop_cb(hil_servoing::Teleop::ConstPtr direction)
	{
		hil_servoing::Teleop command = *direction;
		teleop_direction[0] = command.dir_2D[0];
		teleop_direction[1] = command.dir_2D[1];
		teleop_move = true;
	}

	void joy_cb(sensor_msgs::Joy::ConstPtr controllerStatePtr)
	{
		const std::vector<float> temp_controller_axes = controllerStatePtr->axes;
		const std::vector<int> temp_controller_buttons = controllerStatePtr->buttons;
		const float deadzone = 0.2;
		bool sentinel = false;
		// std::cout << "Callback\n";
		for (int i = 0; i < temp_controller_axes.size(); ++i)
		{
			if (active_axes_map[i])
			{
				// std::cout << i << temp_controller_axes[i] << std::endl;
				if (fabs(temp_controller_axes[i]) > deadzone)
				{
					sentinel = true;
					break;
				}
			}
		}
		if (!sentinel)
		{
			for (int i = 0; i < temp_controller_buttons.size(); ++i)
			{
				if (active_buttons_map[i])
				{
					if (abs(temp_controller_buttons[i]) > 0)
					{
						sentinel = true;
						break;
					}
				}
			}
		}
		if (sentinel)
		{
			controller_axes = temp_controller_axes;
			controller_buttons = temp_controller_buttons;
			teleop_move = true;
			// std::cout << "Here\n";
		}
	}
};

#endif // HIL_CONTROL_H
