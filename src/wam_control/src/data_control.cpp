#include <math.h>
#include <ros/ros.h>
#include <sensor_msgs/Joy.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <iostream>
#include <fstream>
#include <exception>
#include "wam_control/arm_control.h"
#include "wam_control/bhand_control.h"
#include "wam_control/misc_utilities.h"

class DataCenter {
    ArmControl *arm;
    BHandControl *bhand;
    int dof;
    std::string robot_namespace;

    public:
        DataCenter() {
            ros::NodeHandle nh_("~");
            dof = 7;
            robot_namespace = "/zeus";
            arm = new ArmControl(nh_);
            bhand = new BHandControl(robot_namespace, nh_);
            // Get DOF of arm
            while(arm->get_dof() == 0) {
                ROS_INFO_STREAM("Waiting to find robot DOF");
                ros::Duration(1.0).sleep();
            }
            ROS_INFO_STREAM("Robot has " << dof << " DOF");
        }

        ~DataCenter() {
            delete arm;
            delete bhand;
        }

        void initialize()
        {
            ROS_INFO_STREAM("Initializing, please wait...");
            while (!arm->move_to_initial_position()) { continue; }
            ros::Duration(5).sleep();            
            while (!bhand->initialize()) { continue; }
            while (!bhand->close_spread()) { continue; }
            ros::Duration(10).sleep();
            ROS_INFO_STREAM("Initialization complete");
        }

        void loop()
        {
            int num_trials;
            std::stringstream ss;
            std::string s = "";
            std::string filename = "";
            std::string msg = "";
            Eigen::VectorXd target(dof);
            arm->init_questions();
            while (true)
            {
                std::cout << "\n***********************************************************************************************" << std::endl;
                std::cout << "How many trials would you like to perform? (0 to quit) >> " << std::endl;
                while (!std::getline(std::cin, s)) { continue; }
                ss.str(s);
                if (ss >> num_trials)
                {
                    if (num_trials == 0) { break; }
                    target = joints_input(dof);
                    std::cout << "Performing " << num_trials << " trial(s) with target joint state: [";
                    for (int i = 0; i < (dof - 1); ++i)
                    {
                        std::cout << target[i] << ", ";
                    }
                    std::cout << target[dof - 1] << "]" << std::endl;
                    for (int t = 0; t < num_trials; ++t)
                    {
                        if (!arm->move_to_zero()) { std::cout << "Error moving to zero" << std::endl; }
                        ros::Duration(0.5).sleep(); 
                        if (!arm->move_joints(target)) { std::cout << "Error moving to target state" << std::endl; }
                        ros::Duration(0.5).sleep(); 
                    }
                    if (!arm->move_to_zero()) { std::cout << "Error moving to zero" << std::endl; }
                }
                else
                {
                    ROS_WARN_STREAM("Invalid input");
                }
                ss.clear();
                ss.str("");
                s.clear();
            }
        }

};

int main(int argc, char *argv[]) {
    ros::init(argc, argv, "data_control");
    ros::NodeHandle nh_("~");
    ros::AsyncSpinner spinner(0);
    spinner.start();
    DataCenter DC;
    // DC.initialize();
    DC.loop();
    return 0;
}
