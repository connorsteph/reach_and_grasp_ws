#include "wam_control/bhand_control.h"

BHandControl::BHandControl(std::string robot_ns, ros::NodeHandle nh) {
    // Hand Services
    initialize_srvs = nh.serviceClient<std_srvs::Empty>(robot_ns + "/bhand/initialize");
    close_grasp_srvs = nh.serviceClient<std_srvs::Empty>(robot_ns + "/bhand/close_grasp");
    open_grasp_srvs = nh.serviceClient<std_srvs::Empty>(robot_ns + "/bhand/open_grasp");
    open_spread_srvs = nh.serviceClient<std_srvs::Empty>(robot_ns + "/bhand/open_spread");
    close_spread_srvs = nh.serviceClient<std_srvs::Empty>(robot_ns + "/bhand/close_spread");
    pinch_pos_srvs = nh.serviceClient<wam_control::BHandPinchPos>(robot_ns + "/bhand/pinch_pos");
    grasp_pos_srvs = nh.serviceClient<wam_control::BHandGraspPos>(robot_ns + "/bhand/grasp_pos");
    spread_pos_srvs = nh.serviceClient<wam_control::BHandSpreadPos>(robot_ns + "/bhand/spread_pos");
    finger_pos_srvs = nh.serviceClient<wam_control::BHandFingerPos>(robot_ns + "/bhand/finger_pos");
    grasp_vel_srvs = nh.serviceClient<wam_control::BHandGraspVel>(robot_ns + "/bhand/grasp_vel");
    spread_vel_srvs = nh.serviceClient<wam_control::BHandSpreadVel>(robot_ns + "/bhand/spread_vel");
    finger_vel_srvs = nh.serviceClient<wam_control::BHandFingerVel>(robot_ns + "/bhand/finger_vel");
}

bool BHandControl::initialize() 
{
    std_srvs::Empty e;
    return initialize_srvs.call(e);
}

bool BHandControl::close_grasp() 
{
    std_srvs::Empty e;
    return close_grasp_srvs.call(e);
}

bool BHandControl::open_grasp() 
{
    std_srvs::Empty e;
    return open_grasp_srvs.call(e);
}

bool BHandControl::open_spread() 
{
    std_srvs::Empty e;
    return open_spread_srvs.call(e);
}

bool BHandControl::close_spread() 
{
    std_srvs::Empty e;
    return close_spread_srvs.call(e);
}

bool BHandControl::set_pinch_position(double degrees) 
{
    wam_control::BHandPinchPos pinch_pos_req;
    pinch_pos_req.request.radians = degreesToRadians(degrees);
    return pinch_pos_srvs.call(pinch_pos_req);
}

bool BHandControl::set_grasp_position(double degrees) 
{
    wam_control::BHandGraspPos grasp_pos_req;
    grasp_pos_req.request.radians = degreesToRadians(degrees);
    return grasp_pos_srvs.call(grasp_pos_req);
}

bool BHandControl::set_spread_position(double degrees) 
{
    wam_control::BHandSpreadPos spread_pos_req;
    spread_pos_req.request.radians = degreesToRadians(degrees);
    return spread_pos_srvs.call(spread_pos_req);
}

bool BHandControl::set_finger_position(double f1, double f2, double f3) 
{
    wam_control::BHandFingerPos finger_pos_req;
    finger_pos_req.request.radians[0] = degreesToRadians(f1);
    finger_pos_req.request.radians[1] = degreesToRadians(f2);
    finger_pos_req.request.radians[2] = degreesToRadians(f3);
    return finger_pos_srvs.call(finger_pos_req);
}

bool BHandControl::set_grasp_velocity(double velocity) 
{
    wam_control::BHandGraspVel grasp_vel_req;
    grasp_vel_req.request.velocity = velocity;
    return grasp_vel_srvs.call(grasp_vel_req);
}

bool BHandControl::set_spread_velocity(double velocity) 
{
    wam_control::BHandSpreadVel spread_vel_req;
    spread_vel_req.request.velocity = velocity;
    return spread_vel_srvs.call(spread_vel_req);
}

bool BHandControl::set_finger_velocity(const Eigen::VectorXd& finger_velocities) 
{
    wam_control::BHandFingerVel finger_vel_req;
    finger_vel_req.request.velocity[0] = finger_velocities[0];
    finger_vel_req.request.velocity[1] = finger_velocities[1];
    finger_vel_req.request.velocity[2] = finger_velocities[2];
    return finger_vel_srvs.call(finger_vel_req);
}

bool BHandControl::set_2_finger_grasp() 
{
    open_grasp();
    set_spread_position(90);
    ros::Duration(0.5).sleep();
    set_grasp_position(0);
    ros::Duration(0.5).sleep();
    return true;
}

bool BHandControl::set_3_finger_grasp() 
{
    open_grasp();
    ros::Duration(0.5).sleep();
    open_spread();
    ros::Duration(0.5).sleep();
    return true;
}

bool BHandControl::hold_finger_position(bool lock) 
{
    wam_control::BHandSpreadVel spread_vel_req;
    wam_control::BHandGraspVel grasp_vel_req;
    if (lock)
    {
        spread_vel_req.request.velocity = 0;
        grasp_vel_req.request.velocity = 0;
    }
    else
    {
        spread_vel_req.request.velocity = 60;
        grasp_vel_req.request.velocity = 100;
    }
    spread_vel_srvs.call(spread_vel_req);
    grasp_vel_srvs.call(grasp_vel_req);
    return true;
}

bool BHandControl::reset() 
{
    open_grasp();
    ros::Duration(0.5).sleep();
    return close_spread();
}