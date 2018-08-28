cmake_minimum_required(VERSION 2.8.3)
set(CMAKE_CXX_FLAGS "-std=c++11 ${CMAKE_CXX_FLAGS}")

project(hil_servoing)

find_package(catkin REQUIRED COMPONENTS
  roslib
  roscpp
  std_msgs
  message_generation
  cmake_modules
  wam_control
  moveit_core
  moveit_ros_planning
  moveit_ros_planning_interface
  pluginlib
)


find_package(Eigen REQUIRED)

add_message_files(
  FILES
  TaskIds.msg
  TrackPoint.msg
  TrackedPoints.msg
  EndEffectorPoints.msg
  Error.msg
  ErrorInfo.msg
  Teleop.msg
)

generate_messages(
  DEPENDENCIES
)

catkin_package(
  INCLUDE_DIRS include
  #  LIBRARIES hil_servoing
  CATKIN_DEPENDS message_runtime
  #  DEPENDS system_lib
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${Eigen_INCLUDE_DIRS}
)

add_executable(hil_servoing src/hil_control.cpp)
target_link_libraries(hil_servoing
  ${catkin_LIBRARIES}
  arm_control
  bhand_control
)

add_executable(error_calculation src/error_calculation.cpp)
target_link_libraries(error_calculation
  ${catkin_LIBRARIES}
  ${Eigen_LIBRARIES}
)

add_executable(hil_teleop src/hil_teleop.cpp)
target_link_libraries(hil_teleop
  ${catkin_LIBRARIES}
  ${Eigen_LIBRARIES}
  arm_control
  bhand_control
)

add_executable(kinematics src/kinematics.cpp)
target_link_libraries(kinematics
  ${catkin_LIBRARIES}
  ${Eigen_LIBRARIES}
)
