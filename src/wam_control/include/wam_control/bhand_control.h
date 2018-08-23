#ifndef BHAND_CONTROL_H
#define BHAND_CONTROL_H

#include <ros/ros.h>
#include <Eigen/Core>
#include <iostream>
#include <sstream>
#include "wam_control/misc_utilities.h"

// Hand services
#include <std_srvs/Empty.h>
#include "wam_control/BHandPinchPos.h"
#include "wam_control/BHandGraspPos.h"
#include "wam_control/BHandSpreadPos.h"
#include "wam_control/BHandFingerPos.h"
#include "wam_control/BHandGraspVel.h"
#include "wam_control/BHandSpreadVel.h"
#include "wam_control/BHandFingerVel.h"

class BHandControl 
{
    public:
        BHandControl(std::string robot_ns, ros::NodeHandle nh);
        // Hand calls
        bool initialize(); // initialize
        bool open_grasp(); // open_grasp
        bool open_spread(); // open_spread
        bool close_grasp(); // close_grasp
        bool close_spread(); // close_spread
        bool set_pinch_position(double degrees); // pinch_pos
        bool set_grasp_position(double degrees); // grasp_pos
        bool set_spread_position(double degrees); // spread_pos
        bool set_finger_position(double f1, double f2, double f3); // finger_pos
        bool set_grasp_velocity(double velocity); // grasp_vel
        bool set_spread_velocity(double velocity); // spread_vel
        bool set_finger_velocity(const Eigen::VectorXd& finger_velocities); // finger_vel
        bool set_2_finger_grasp(); // open_grasp & spread_pos & grasp_pos
        bool set_3_finger_grasp(); // open_grasp & open_spread
        bool hold_finger_position(bool lock); // grasp_vel & spread_vel
        bool reset(); // open_grasp & close_spread

    private:
        // Hand Services
        ros::ServiceClient initialize_srvs;
        ros::ServiceClient close_grasp_srvs;
        ros::ServiceClient open_grasp_srvs;
        ros::ServiceClient open_spread_srvs;
        ros::ServiceClient close_spread_srvs;
        ros::ServiceClient grasp_pos_srvs;
        ros::ServiceClient spread_pos_srvs;
        ros::ServiceClient pinch_pos_srvs;
        ros::ServiceClient finger_pos_srvs;
        ros::ServiceClient grasp_vel_srvs;
        ros::ServiceClient spread_vel_srvs;
        ros::ServiceClient finger_vel_srvs;
};

#endif // BHAND_CONTROL_H