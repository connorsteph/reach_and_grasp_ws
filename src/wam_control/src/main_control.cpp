#include <math.h>
#include <ros/ros.h>
#include <sensor_msgs/Joy.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <iostream>
#include <fstream>
#include <exception>
#include <dynamic_reconfigure/server.h>
#include "wam_control/arm_control.h"
#include "wam_control/bhand_control.h"
#include "wam_control/misc_utilities.h"

class Controller {
    ArmControl *arm;
    BHandControl *bhand;
    int dof;
public:
    Controller() {
        ros::NodeHandle nh_("~");
        arm = new ArmControl(nh_);
        do {
            ROS_INFO_STREAM("Control Center: Waiting to find robot DOF");
            ros::Duration(1.0).sleep();
            dof = arm->get_dof();
        } while (dof == 0);
        if (dof == 7) {
            bhand = new BHandControl("/zeus", nh_);
        } 
        ROS_INFO_STREAM("Control Center: Robot has " << dof << " DOF");
    }

    ~Controller() 
    {
        delete arm;
        delete bhand;
    }

    void initialize()
    {
        if (dof == 7) {
            ROS_INFO_STREAM("Initializing, please wait...");
            while (!arm->move_to_initial_position()) { continue; }
            ros::Duration(4).sleep();            
            while (!bhand->initialize()) { continue; }
            while (!bhand->close_spread()) { continue; }
            ros::Duration(10).sleep();
            ROS_INFO_STREAM("Initialization complete");
        }
    }

    void loop() {
        bool quit = false;
        bool error = false;
        bool answer = false;
        int i = 0;
        double d = 0.0;
        double f1, f2, f3;
        Eigen::VectorXd target, target2, target3;
        std::string user_msg;
        std::string msg;
        std::string arm_options = 
                "\nARM OPTIONS:\n" 
                "\t30. TESTING TRAJECTORY FILE\n" 
                "\t25. Go to position: HOME\n" 
                "\t0.  Go to position: ZERO\n" 
                "\t1.  Go to position: READY\n" 
                "\t2.  Set position: JOINTS\n" 
                "\t3.  Set position: SINGLE JOINT\n" 
                "\t26. Set position: PERTURB SINGLE JOINT\n" 
                "\t4.  Set position: CARTESIAN\n" 
                "\t5.  Set velocity: CARTESIAN\n" 
                "\t6.  Set orientation: x, y, z, w\n" 
                "\t7.  Set orientation: x, y, z, w, kp, kd\n" 
                "\t8.  Set gravity compensation\n" 
                "\t9.  Lock: JOINTS\n"
                "\t10. Lock: CARTESIAN POSITION\n" 
                "\t11. Lock: END EFFECTOR\n" 
                "\t12. Lock: END EFFECTOR 2\n" 
                "\t13. Teach: WAYPOINTS JOINTS\n" 
                "\t24. Teach: WAYPOINTS TOOL\n" 
                "\t14. Teach: MOTION\n" 
                "\t15. Follow: WAYPOINTS\n" 
                "\t16. Follow: MOTION\n" 
                "\t17. Follow: PATH\n" 
                "\t18. Arms: LINK\n" 
                "\t19. Arms: UNLINK\n" 
                "\t20. Apply force and torque to end effector: BASE\n" 
                "\t21. Apply force and torque to end effector: TOOL\n" 
                "\t22. Visual fix: START\n" 
                "\t23. Visual fix: STOP\n";
        std::string bhand_options = 
                "\nBHAND OPTIONS:\n" 
                "\t80. INITIALIZE HAND\n" 
                "\t81. RESET HAND\n" 
                "\t82. Open: GRASP\n" 
                "\t83. Open: SPREAD\n" 
                "\t84. Close: GRASP\n" 
                "\t85. Close: SPREAD\n" 
                "\t86. Set velocity: GRASP\n" 
                "\t87. Set velocity: SPREAD\n" 
                "\t88. Set velocity: FINGERS\n" 
                "\t89. Set position: PINCH\n" 
                "\t90. Set position: GRASP\n" 
                "\t91. Set position: SPREAD\n" 
                "\t100. Set position: FINGERS\n" 
                "\t93. Set position: 2 FINGER GRASP\n" 
                "\t94. Set position: 3 FINGER GRASP\n" 
                "\t95. Lock/unlock position: FINGERS\n";
        std::string misc_options = 
                "\nMISC OPTIONS:\n"
                "\t97. Save current joint information to file\n" 
                "\t99. Print current information\n" 
                "\t111. QUIT\n" 
                "\n>> ";
        while (ros::ok() && !quit) {
            error = false;
            std::cout << arm_options;
            if (dof == 7) { std::cout << bhand_options; }
            std::cout << misc_options;
            i = (int)double_input(0, 111);
            switch (i) {
                case 30:
                    if (!arm->follow_trajectory()) { error = true; }
                    break;
                case 25: 
                    if (!arm->move_to_home_position()) { error = true; }
                    break;
                case 1:
                    if (!arm->move_to_initial_position()) { error = true; }
                    break;
                case 2:
                    if (!arm->move_all_joints()) { error = true; }
                    break;
                case 3:
                    if (!arm->move_one_joint()) { error = true; }
                    break;
                case 26:
                    if (!arm->move_one_joint_by_delta()) { error = true; }
                    break;
                case 4:
                    if (!arm->move_cartesian()) { error = true; }
                    break;
                case 5:
                    if (!arm->move_cartesian_velocity()) { error = true; }
                    break;
                case 6:
                    if (!arm->move_orientation()) { error = true; }
                    break;
                case 7:
                    if (!arm->move_orientation_split()) { error = true; }
                    break;
                case 8:
                    if (!arm->set_gravity_compensation()) { error = true; }
                    break;
                case 9:
                    if (!arm->lock_joint_position()) { error = true; }
                    break;
                case 10:
                    if (!arm->lock_cartesian_position()) { error = true; }
                    break;
                case 11:
                    if (!arm->lock_eef_orientation()) { error = true; }
                    break;
                case 12:
                    if (!arm->lock_eef_orientation2()) { error = true; }
                    break;
                case 13:
                    if (!arm->teach_waypoints_joint()) { error = true; }
                    break;
                case 24:
                    if (!arm->teach_waypoints_tool()) { error = true; }
                    break;
                case 14:
                    user_msg = string_input("Please input file name to save motion to >> ");
                    if (!arm->teach_motion("motions/" + user_msg + current_time())) { error = true; }
                    break;
                case 15:
                    // if (!arm->follow_waypoints()) { error = true; }
                    break;
                case 16:
                    user_msg = string_input("Please input motion file name >> ");
                    if (!arm->follow_motion(user_msg)) { error = true; }
                    break;
                case 17:
                    if (!arm->follow_path()) { error = true; }
                    break;
                case 18:
                    if (!arm->link_arms()) { error = true; }
                    break;
                case 19:
                    if (!arm->unlink_arms()) { error = true; }
                    break;
                case 20:
                    if (!arm->move_force_torque_base()) { error = true; }
                    break;
                case 21:
                    if (!arm->move_force_torque_tool()) { error = true; }
                    break;
                case 22:
                    if (!arm->start_visual_fix()) { error = true; }
                    break;
                case 23:
                    if (!arm->stop_visual_fix()) { error = true; }
                    break;
                case 0:
                    if (!arm->move_to_zero()) { error = true; }
                    break;
                /*************************************************************************
                 * BARRETT HAND OPTIONS
                 *************************************************************************/
                case 80:
                    if (!bhand->initialize()) { error = true; }
                    break;
                case 81:
                    if (!bhand->reset()) { error = true; }
                    break;
                case 82:
                    if (!bhand->open_grasp()) { error = true; }
                    break;
                case 83:
                    if (!bhand->open_spread()) { error = true; }
                    break;
                case 84:
                    if (!bhand->close_grasp()) { error = true; }
                    break;
                case 85:
                    if (!bhand->close_spread()) { error = true; }
                    break;
                case 86:
                    std::cout << "setting grasp velocity" << std::endl;
                    d = double_input(16, 100); 
                    if (!bhand->set_grasp_velocity(d)) { error = true; }
                    break;
                case 87:
                    std::cout << "setting spread velocity" << std::endl;
                    d = double_input(16, 60); 
                    if (!bhand->set_spread_velocity(d)) { error = true; }
                    break;
                case 88:
                    // std::cout << "\nNEED: 3 finger velocity values " << std::endl;
                    // target = double_input(16, 100, 3); 
                    // if (!bhand->set_finger_velocity(target)) { error = true; }
                    break;
                case 89:
                    std::cout << "setting target pinch position" << std::endl;
                    d = double_input(0, 140); 
                    if (!bhand->set_pinch_position(d)) { error = true; }
                    break;
                case 90:
                    std::cout << "setting target grasp position" << std::endl;
                    d = double_input(0, 140); 
                    if (!bhand->set_grasp_position(d)) { error = true; }
                    break;
                case 91:
                    std::cout << "setting target spread position" << std::endl;
                    d = double_input(0, 180); 
                    if (!bhand->set_spread_position(d)) { error = true; }
                    break;
                case 100:
                    std::cout << "\nNEED: 3 target finger position values " << std::endl;
                    f1 = double_input(0, 140);   
                    f2 = double_input(0, 140);   
                    f3 = double_input(0, 140);   
                    if (!bhand->set_finger_position(f1, f2, f3)) { error = true; }
                    break;
                case 93:
                    if (!bhand->set_2_finger_grasp()) { error = true; }
                    break;
                case 94:
                    if (!bhand->set_3_finger_grasp()) { error = true; }
                    break;
                case 95:
                    msg = "\nWould you like to lock finger position? >> ";
                    answer = boolean_input(msg); 
                    if (!bhand->hold_finger_position(answer)) { error = true; }
                    break;
                case 97:
                    arm->log_to_file();
                    break;
                case 99:
                    arm->print_information_to_terminal();
                    break;
                case 111:
                    quit = true;
                    break;
                default:
                    ROS_WARN_STREAM("Unknown option");
            }
            if (error == true) { ROS_WARN_STREAM("Error: Unable to complete task"); }
        }
    }
};

int main(int argc, char *argv[]) {
    ros::init(argc, argv, "wam_control");
    ros::NodeHandle nh_("~");
    ros::AsyncSpinner spinner(0);
    spinner.start();
    Eigen::VectorXd test;
    Controller c;
    // c.initialize();
    c.loop();
    return 0;
}
