
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <iostream>
#include <string.h>
#include <opencv2/opencv.hpp>


#include <fstream>
#include <vector>
#include <cmath>
#include <map>
#include <ctime>
#include <sstream>
#include <algorithm>
#include <boost/thread/thread.hpp>
#include <ros/ros.h>
#include "std_msgs/String.h"
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Point.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>

#include "colormod.h" // namespace Color
#include "keyboard.h"

#ifndef Included_MATH_HELPER_H
#define Included_MATH_HELPER_H
#include "math_helper.h"
#endif
#ifndef Included_STRING_CONVERTOR_H
#define Included_STRING_CONVERTOR_H
#include "string_convertor.h"
#endif

// MoveIt!
#include <moveit/robot_model_loader/robot_model_loader.h>
#include <moveit/robot_model/robot_model.h>
#include <moveit/robot_state/robot_state.h>


// Robot state publishing
#include <moveit/robot_state/conversions.h>
#include <moveit_msgs/DisplayRobotState.h>

// Kinematics
#include <moveit_msgs/GetPositionIK.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/Quaternion.h>

using namespace std;

Color::Modifier c_red(Color::FG_RED);
Color::Modifier c_yellow(Color::FG_YELLOW);
Color::Modifier c_green(Color::FG_GREEN);
Color::Modifier c_default(Color::FG_DEFAULT);

double step_size = 0.01;//m
double angle_step_size = 0.01745329251;//1 degree
double current_pos[]={9999,9999,9999,9999,9999,9999};//initialize as an invalid  value set
std::vector<double> fullJointStates;
std::vector<double> joint_values; //IK solutions
moveit::core::RobotModelPtr kinematic_model;
std::vector<std::string>  joint_names;
ros::Publisher robot_state_publisher ;
bool grasping_mode = false;
sensor_msgs::JointState grasp_msg;
const Eigen::Affine3d comput_fk() //get current end  effector  pose
{
  robot_state::RobotStatePtr kinematic_state(new robot_state::RobotState(kinematic_model));
  //fill in the seed
  kinematic_state->setVariablePositions(current_pos);
  kinematic_state->update();
  const Eigen::Affine3d end_effector_state = kinematic_state->getGlobalLinkTransform("jaco_6_hand_limb");//table_base
  //cout<<end_effector_state<<endl;
  /* Print end-effector pose. Remember that this is in the model frame */
  //print out current joints
  // cout<<"print out current joints"<<endl;
  // kinematic_state->copyJointGroupPositions(joint_model_group, joint_values);
  // for(std::size_t i=0; i < joint_names.size(); ++i)
  // {
  //   ROS_INFO("current Joint %s: %f", joint_names[i].c_str(), joint_values[i]);
  // }
  return end_effector_state;
}

bool comput_IK(geometry_msgs::Pose p)
{
  robot_state::RobotStatePtr kinematic_state(new robot_state::RobotState(kinematic_model));
  const robot_state::JointModelGroup* joint_model_group = kinematic_model->getJointModelGroup("Arm");//All
  const std::vector<std::string> &joint_names2 = joint_model_group->getJointModelNames();
  joint_names= joint_names2;
  joint_names=string_convertor::safeRemoveStringVec(joint_names,0);//first  item of  joint name  is  caused by  mistake

  //fill in the seed
  kinematic_state->setVariablePositions(current_pos);
  kinematic_state->update();

  bool found_ik = kinematic_state->setFromIK(joint_model_group, p, 10, 0.1);
  // Now, we can print out the IK solution (if found):
  if (found_ik)
  {
    kinematic_state->copyJointGroupPositions(joint_model_group, joint_values);
    cout<<c_green<<"IK solution found: ";
    for(std::size_t i=0; i < joint_values.size(); ++i)
    {
      //ROS_INFO("IK solution Joint %s: %f", joint_names[i].c_str(), joint_values[i]);
      cout<<joint_values[i]<<",";
    }
    cout<<c_default<<endl;
  }
  else
  {
    ROS_INFO("Did not find IK solution");
  }
  return found_ik;
}

std::vector<std::string> constructFullJointNames()
{
   std::vector<std::string> rts;
   rts.push_back("jaco_arm_0_joint");
   rts.push_back("jaco_arm_1_joint");
   rts.push_back("jaco_arm_2_joint");
   rts.push_back("jaco_arm_3_joint");
   rts.push_back("jaco_arm_4_joint");
   rts.push_back("jaco_arm_5_joint");
   rts.push_back("jaco_finger_joint_0");
   rts.push_back("jaco_finger_joint_2");
   rts.push_back("jaco_finger_joint_4");
   return rts;
}

std::vector<double> constructFullJoints(double *strs)
{
  std::vector<double> rts;
  int arraySize =(int)(sizeof(strs)/sizeof(*strs));
  for( size_t i=0;i<arraySize;i++)
    rts.push_back(strs[i]);
  return rts;
}

void tele_op_keyboard(keyboard::Key k)
{
  if(current_pos[0]==9999)
  {
    cout<<c_red<<"current robot joint state is not updated!"<<c_default<<endl;
    return  ;
  }
  const Eigen::Affine3d end_effector_state = comput_fk();
  //ROS_INFO_STREAM("Translation: " << end_effector_state.translation());
  //ROS_INFO_STREAM("Rotation: " << end_effector_state.rotation());
  Eigen::Quaterniond rot_q(end_effector_state.rotation());
  //ROS_INFO_STREAM("Rotation q: " << rot_q);
  //ROS_INFO_STREAM("Rotation q w: " << rot_q.w());
  geometry_msgs::Pose p;
  p.position.x = end_effector_state.translation()(0);
  p.position.y = end_effector_state.translation()(1);
  p.position.z = end_effector_state.translation()(2);
  p.orientation.x = rot_q.x();
  p.orientation.y = rot_q.y();
  p.orientation.z = rot_q.z();
  p.orientation.w = rot_q.w();
  //geometry_msgs::Pose pose;
 	//tf::poseEigenToMsg(end_effector_state, pose);

  std::vector<double> joint_values_temp; //
  std::vector<double> effort_temp; //
  bool needEffortControl = false;
  std::vector<std::string>  joint_names_temp;
  int ik_needed = 0;//0 no motion neeeded . 1 motion needed  and ik  solution  needed; 2 motion  needed,  but no  need for  ik solution.

  switch (k.code) {
    case 273://up arrow
      std::cout << "move forward" << '\n';
      ik_needed=1;
      p.position.x = end_effector_state.translation()(0)-step_size;
      break;
    case 274://down arrow
      std::cout << "move backward" << '\n';
      ik_needed=1;
      p.position.x = end_effector_state.translation()(0)+step_size;
      break;
    case 276://left arrow
      std::cout << "move left" << '\n';
      ik_needed=1;
      p.position.y = end_effector_state.translation()(1)-step_size;
      break;
    case 275://right arrow
      std::cout << "move right" << '\n';
      ik_needed=1;
      p.position.y = end_effector_state.translation()(1)+step_size;
      break;
    case 97://a
      std::cout << "move up" << '\n';
      ik_needed=1;
      p.position.z = end_effector_state.translation()(2)+step_size;
      break;
    case 115://s
      std::cout << "move down" << '\n';
      ik_needed=1;
      p.position.z = end_effector_state.translation()(2)-step_size;
      break;
    case 100://d
      std::cout << "rotate clockwise" << '\n';
      ik_needed=2;
      std::vector<double>().swap(joint_values_temp); //clear the vector
      std::vector<std::string>().swap(joint_names_temp);
      joint_names_temp.push_back("jaco_arm_5_joint");
      joint_values_temp.push_back(fullJointStates[6]+angle_step_size);
      break;
    case 102://f
      std::cout << "rotate  anti-clockwise" << '\n';
      ik_needed=2;
      std::vector<double>().swap(joint_values_temp); //clear the vector
      std::vector<std::string>().swap(joint_names_temp);
      joint_names_temp.push_back("jaco_arm_5_joint");
      joint_values_temp.push_back(fullJointStates[6]-angle_step_size);
      break;
    case 103://g
      std::cout << "grasp" << '\n';
      grasping_mode=true;
      ik_needed=2;
      std::vector<double>().swap(joint_values_temp); //clear the vector
      std::vector<std::string>().swap(joint_names_temp);
      joint_names_temp.push_back("jaco_finger_joint_0");
      joint_names_temp.push_back("jaco_finger_joint_2");
      joint_names_temp.push_back("jaco_finger_joint_4");
      joint_values_temp.push_back(1.0);
      joint_values_temp.push_back(1.0);
      joint_values_temp.push_back(1.0);
      needEffortControl=true;
      effort_temp.push_back(50);
      effort_temp.push_back(50);
      effort_temp.push_back(50);
      grasp_msg.name = joint_names_temp;
      grasp_msg.position = joint_values_temp;
      grasp_msg.effort = effort_temp;
      break;
    case 104://h
      ik_needed=2;
      std::cout << "release" << '\n';
      grasping_mode=false;
      std::vector<double>().swap(joint_values_temp); //clear the vector
      std::vector<std::string>().swap(joint_names_temp);
      joint_names_temp.push_back("jaco_finger_joint_0");
      joint_names_temp.push_back("jaco_finger_joint_2");
      joint_names_temp.push_back("jaco_finger_joint_4");
      joint_values_temp.push_back(0);
      joint_values_temp.push_back(0);
      joint_values_temp.push_back(0);
      break;
    case 106: //j
     ik_needed=0;
     std::cout << "step size increase to maximum: 1 cm" << '\n';
     step_size=0.01;
     angle_step_size = 0.01745329251;
     break;
   case 107: //k
    ik_needed=0;
    std::cout << "step size decrease to minimum: 1 mm" << '\n';
    step_size=0.001;
    angle_step_size = 0.005;
    break;
   case 257://num 1, pose 1
     ik_needed=2;
     std::cout << "go to pre grasp pose 1" << '\n';
     grasping_mode=false;
     std::vector<double>().swap(joint_values_temp); //clear the vector
     std::vector<std::string>().swap(joint_names_temp);
     joint_names_temp=constructFullJointNames();
     //joint_pos=double[]{-1.3855690196259935, -0.6055034496049199, -0.13711278461549714, -0.26863385237514037, -2.164869929572392, 0.022610752306681192, 0.005429499871134169, 0.002955580646637479, 0.0054895619658141825};//initialize as an invalid  value set
     joint_values_temp=string_convertor::split2double("-1.5067168867631673, -0.7126268917944647, 0.06637582003291165, -0.2569294266773463, -2.261174910063673, -0.07121034017964067, 0.005231278056194277, 0.004921044751721837, 0.005474238319798097",',');
     break;
   case 258://num 2, pose 2
     ik_needed=2;
     std::cout << "go to pre grasp pose 2" << '\n';
     grasping_mode=false;
     std::vector<double>().swap(joint_values_temp); //clear the vector
     std::vector<std::string>().swap(joint_names_temp);
     joint_names_temp=constructFullJointNames();
     joint_values_temp=string_convertor::split2double("-1.6785439713205421, -0.8295996787645588, 0.5727369662738369, -0.15870884433891863, -2.693067655844972, -0.4522102718374619, 0.0050140626796837395, 0.0047726880740635025, 0.005041075119017968",',');//initialize as an invalid  value set
     //joint_values_temp=constructFullJoints(joint_pos2);
     break;
  }
  sensor_msgs::JointState msg;
  if(ik_needed==1)
  {
    bool ik_found = comput_IK(p);
    if(ik_found)
    {
      msg.name = joint_names;
      msg.position = joint_values;
      //cout<<msg<<endl;
      robot_state_publisher.publish(msg);
      ROS_INFO("msg published!");
    }
  }
  else if(ik_needed==2)
  {
    msg.name = joint_names_temp;
    msg.position = joint_values_temp;
    if(needEffortControl)
      msg.effort = effort_temp;
    //cout<<msg<<endl;
    robot_state_publisher.publish(msg);
    ROS_INFO("msg published!");
  }
}

void callback(const sensor_msgs::JointState & msg)
{
    fullJointStates=msg.position;
    //current_pos = math_helper::splitDoubleArray(msg.position,1,6);
    current_pos[0]=msg.position[1];
    current_pos[1]=msg.position[2];
    current_pos[2]=msg.position[3];
    current_pos[3]=msg.position[4];
    current_pos[4]=msg.position[5];
    current_pos[5]=msg.position[6];
      //ROS_INFO("joint state received!");
    // if(grasping_mode)
    // {
    //   robot_state_publisher.publish(grasp_msg);
    //   ROS_INFO("grasping published!");
    // }
}

//===========================MAIN FUNCTION START===========================

int main(int argc, char* argv[]){
  // Initialize the ROS system and become a node.
   // if(argc==2)
   //      numThres = atoi(argv[1]);
  ros::init(argc, argv, "tele_op");
  ros::NodeHandle n("~");
  robot_state_publisher = n.advertise<sensor_msgs::JointState>( "/jaco/joint_control", 1000 );
  //ros::Duration(1).sleep();
  ros::Subscriber sub = n.subscribe ("/jaco/joint_state", 10, callback);

  robot_model_loader::RobotModelLoader robot_model_loader("robot_description");
  kinematic_model = robot_model_loader.getModel();
  ROS_INFO("Model frame: %s", kinematic_model->getModelFrame().c_str());

  bool allow_repeat=false;
  int repeat_delay, repeat_interval;

  n.param<bool>( "allow_repeat", allow_repeat, false ); // disable by default
  n.param<int>( "repeat_delay", repeat_delay, SDL_DEFAULT_REPEAT_DELAY );
  n.param<int>( "repeat_interval", repeat_interval, SDL_DEFAULT_REPEAT_INTERVAL );

  if ( !allow_repeat ) repeat_delay=0; // disable
  keyboard::Keyboard kbd( repeat_delay, repeat_interval );

  ros::Rate r(50);
  cout<<"========================================================================"<<endl<<endl;
  cout<<c_green<<"Human teaching interface by keyboard teleoperation control"<<endl<<endl;
  cout<<c_green<<"University of Alberta, Vision & Robotics Lab, Jun Jin"<<c_default<<endl<<endl;
  cout<<"========================================================================"<<endl;
  cout<<c_yellow<<"options on the end effector motion:"<<endl;
  cout<<"forward -- Up arrow"<<endl;
  cout<<"backward -- Up arrow"<<endl;
  cout<<"left -- left arrow"<<endl;
  cout<<"right -- right arrow"<<endl;
  cout<<"up -- a"<<endl;
  cout<<"down -- s"<<endl;
  cout<<"rotate clockwise -- d"<<endl;
  cout<<"rotate anti-clockwise -- f"<<endl;
  cout<<"grasping -- g"<<endl;
  cout<<"open gripper -- h"<<endl;
  cout<<c_default<<"--------------------------------------"<<endl;
  keyboard::Key k;
  bool pressed, new_event;
  while (ros::ok() && kbd.get_key(new_event, pressed, k.code, k.modifiers)) {
    if (new_event) {
      k.header.stamp = ros::Time::now();
      if (pressed)
         tele_op_keyboard(k);
    }
    ros::spinOnce();
    r.sleep();
  }

  ros::waitForShutdown();
}
