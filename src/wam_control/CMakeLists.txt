cmake_minimum_required(VERSION 2.8.3)

# Use C++11: Hopefully officially supported soon
set(CMAKE_CXX_FLAGS "-std=c++11 ${CMAKE_CXX_FLAGS}")

project(wam_control)

find_package(catkin REQUIRED COMPONENTS
  dynamic_reconfigure
  roslib
  roscpp
  geometry_msgs
  message_generation
  genmsg
  cmake_modules
)

find_package(Eigen REQUIRED)

add_message_files(
  FILES
  RTCartPos.msg
  RTCartVel.msg
  RTJointPos.msg
  RTJointVel.msg
  RTOrtnPos.msg
  RTOrtnVel.msg
  RTPose.msg
  MatrixMN.msg
)

add_service_files(
  FILES
  CartPosMove.srv
  GravityComp.srv
  Hold.srv
  JointMove.srv
  JointMoveBlock.srv
  OrtnMove.srv
  OrtnSplitMove.srv
  PoseMove.srv
  CartVel.srv
  BHandFingerPos.srv
  BHandFingerVel.srv
  BHandGraspPos.srv
  BHandGraspVel.srv
  BHandSpreadPos.srv
  BHandSpreadVel.srv
  Teach.srv
  Play.srv
  BHandPinchPos.srv
  Link.srv
  ForceTorqueTool.srv
  FollowPath.srv
  GetToolPose.srv
)

#generate_dynamic_reconfigure_options(
#    cfg/Servoing.cfg
#)

generate_messages(
  DEPENDENCIES
  geometry_msgs
)

catkin_package(
    INCLUDE_DIRS include
    #  LIBRARIES wam_control
    CATKIN_DEPENDS message_runtime geometry_msgs
    #  DEPENDS system_lib
)

include_directories(
    ${catkin_INCLUDE_DIRS}
    ${Eigen_INCLUDE_DIRS}
    include
)

add_library(arm_control src/arm_control.cpp)
add_dependencies(arm_control ${catkin_EXPORTED_TARGETS})

add_library(bhand_control src/bhand_control.cpp)
add_dependencies(bhand_control ${catkin_EXPORTED_TARGETS})

add_executable(control_center src/main_control.cpp)
target_link_libraries(control_center
  ${catkin_LIBRARIES}
  arm_control
  bhand_control
)

#add_executable(data_center src/data_control.cpp)
#target_link_libraries(data_center
#  ${catkin_LIBRARIES}
#  arm_control
#  bhand_control
#)
