# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "wam_control: 8 messages, 22 services")

set(MSG_I_FLAGS "-Iwam_control:/home/froglake/reach_and_grasp_ws/src/wam_control/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(wam_control_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/JointMoveBlock.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/JointMoveBlock.srv" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/GetToolPose.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/GetToolPose.srv" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandGraspPos.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandGraspPos.srv" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/CartVel.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/CartVel.srv" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Hold.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Hold.srv" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandGraspVel.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandGraspVel.srv" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandFingerVel.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandFingerVel.srv" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/CartPosMove.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/CartPosMove.srv" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTCartPos.msg" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTCartPos.msg" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTCartVel.msg" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTCartVel.msg" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Play.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Play.srv" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/OrtnSplitMove.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/OrtnSplitMove.srv" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/JointMove.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/JointMove.srv" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/MatrixMN.msg" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/MatrixMN.msg" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/PoseMove.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/PoseMove.srv" "geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTJointPos.msg" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTJointPos.msg" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandSpreadPos.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandSpreadPos.srv" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandFingerPos.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandFingerPos.srv" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTOrtnVel.msg" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTOrtnVel.msg" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandSpreadVel.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandSpreadVel.srv" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTPose.msg" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTPose.msg" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Teach.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Teach.srv" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTJointVel.msg" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTJointVel.msg" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/ForceTorqueTool.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/ForceTorqueTool.srv" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/OrtnMove.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/OrtnMove.srv" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/FollowPath.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/FollowPath.srv" "geometry_msgs/Point32"
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/GravityComp.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/GravityComp.srv" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandPinchPos.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandPinchPos.srv" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTOrtnPos.msg" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTOrtnPos.msg" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Link.srv" NAME_WE)
add_custom_target(_wam_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_control" "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Link.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTCartVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_msg_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_msg_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTJointVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_msg_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/MatrixMN.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_msg_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTCartPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_msg_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTJointPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_msg_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTOrtnPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_msg_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTOrtnVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)

### Generating Services
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/JointMoveBlock.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/GetToolPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandGraspPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/CartVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Hold.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandGraspVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandFingerVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/CartPosMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/OrtnSplitMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/JointMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/PoseMove.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandSpreadPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandFingerPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandSpreadVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Teach.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/ForceTorqueTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/OrtnMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/FollowPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/GravityComp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandPinchPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)
_generate_srv_cpp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Link.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
)

### Generating Module File
_generate_module_cpp(wam_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(wam_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(wam_control_generate_messages wam_control_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/JointMoveBlock.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/GetToolPose.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandGraspPos.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/CartVel.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Hold.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandGraspVel.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandFingerVel.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/CartPosMove.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTCartPos.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTCartVel.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Play.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/OrtnSplitMove.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/JointMove.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/MatrixMN.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/PoseMove.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTJointPos.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandSpreadPos.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandFingerPos.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTOrtnVel.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandSpreadVel.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTPose.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Teach.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTJointVel.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/ForceTorqueTool.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/OrtnMove.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/FollowPath.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/GravityComp.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandPinchPos.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTOrtnPos.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Link.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_cpp _wam_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wam_control_gencpp)
add_dependencies(wam_control_gencpp wam_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wam_control_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTCartVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_msg_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_msg_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTJointVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_msg_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/MatrixMN.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_msg_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTCartPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_msg_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTJointPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_msg_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTOrtnPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_msg_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTOrtnVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)

### Generating Services
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/JointMoveBlock.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/GetToolPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandGraspPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/CartVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Hold.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandGraspVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandFingerVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/CartPosMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/OrtnSplitMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/JointMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/PoseMove.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandSpreadPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandFingerPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandSpreadVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Teach.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/ForceTorqueTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/OrtnMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/FollowPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/GravityComp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandPinchPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)
_generate_srv_lisp(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Link.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
)

### Generating Module File
_generate_module_lisp(wam_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(wam_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(wam_control_generate_messages wam_control_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/JointMoveBlock.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/GetToolPose.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandGraspPos.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/CartVel.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Hold.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandGraspVel.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandFingerVel.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/CartPosMove.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTCartPos.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTCartVel.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Play.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/OrtnSplitMove.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/JointMove.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/MatrixMN.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/PoseMove.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTJointPos.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandSpreadPos.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandFingerPos.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTOrtnVel.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandSpreadVel.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTPose.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Teach.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTJointVel.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/ForceTorqueTool.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/OrtnMove.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/FollowPath.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/GravityComp.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandPinchPos.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTOrtnPos.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Link.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_lisp _wam_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wam_control_genlisp)
add_dependencies(wam_control_genlisp wam_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wam_control_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTCartVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_msg_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_msg_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTJointVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_msg_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/MatrixMN.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_msg_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTCartPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_msg_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTJointPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_msg_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTOrtnPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_msg_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTOrtnVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)

### Generating Services
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/JointMoveBlock.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/GetToolPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandGraspPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/CartVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Hold.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandGraspVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandFingerVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/CartPosMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/OrtnSplitMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/JointMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/PoseMove.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandSpreadPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandFingerPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandSpreadVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Teach.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/ForceTorqueTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/OrtnMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/FollowPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/GravityComp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandPinchPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)
_generate_srv_py(wam_control
  "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Link.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
)

### Generating Module File
_generate_module_py(wam_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(wam_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(wam_control_generate_messages wam_control_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/JointMoveBlock.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/GetToolPose.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandGraspPos.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/CartVel.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Hold.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandGraspVel.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandFingerVel.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/CartPosMove.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTCartPos.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTCartVel.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Play.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/OrtnSplitMove.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/JointMove.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/MatrixMN.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/PoseMove.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTJointPos.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandSpreadPos.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandFingerPos.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTOrtnVel.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandSpreadVel.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTPose.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Teach.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTJointVel.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/ForceTorqueTool.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/OrtnMove.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/FollowPath.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/GravityComp.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandPinchPos.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTOrtnPos.msg" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Link.srv" NAME_WE)
add_dependencies(wam_control_generate_messages_py _wam_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wam_control_genpy)
add_dependencies(wam_control_genpy wam_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wam_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(wam_control_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(wam_control_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_control
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(wam_control_generate_messages_py geometry_msgs_generate_messages_py)
endif()
