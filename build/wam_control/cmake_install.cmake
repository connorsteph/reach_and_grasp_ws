# Install script for directory: /home/froglake/reach_and_grasp_ws/src/wam_control

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/froglake/reach_and_grasp_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_control/msg" TYPE FILE FILES
    "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTCartPos.msg"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTCartVel.msg"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTJointPos.msg"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTJointVel.msg"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTOrtnPos.msg"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTOrtnVel.msg"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/RTPose.msg"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/msg/MatrixMN.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_control/srv" TYPE FILE FILES
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/CartPosMove.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/GravityComp.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Hold.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/JointMove.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/JointMoveBlock.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/OrtnMove.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/OrtnSplitMove.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/PoseMove.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/CartVel.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandFingerPos.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandFingerVel.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandGraspPos.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandGraspVel.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandSpreadPos.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandSpreadVel.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Teach.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Play.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/BHandPinchPos.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/Link.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/ForceTorqueTool.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/FollowPath.srv"
    "/home/froglake/reach_and_grasp_ws/src/wam_control/srv/GetToolPose.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_control/cmake" TYPE FILE FILES "/home/froglake/reach_and_grasp_ws/build/wam_control/catkin_generated/installspace/wam_control-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/froglake/reach_and_grasp_ws/devel/include/wam_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/froglake/reach_and_grasp_ws/devel/share/common-lisp/ros/wam_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/froglake/reach_and_grasp_ws/devel/lib/python2.7/dist-packages/wam_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/froglake/reach_and_grasp_ws/devel/lib/python2.7/dist-packages/wam_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/froglake/reach_and_grasp_ws/build/wam_control/catkin_generated/installspace/wam_control.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_control/cmake" TYPE FILE FILES "/home/froglake/reach_and_grasp_ws/build/wam_control/catkin_generated/installspace/wam_control-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_control/cmake" TYPE FILE FILES
    "/home/froglake/reach_and_grasp_ws/build/wam_control/catkin_generated/installspace/wam_controlConfig.cmake"
    "/home/froglake/reach_and_grasp_ws/build/wam_control/catkin_generated/installspace/wam_controlConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_control" TYPE FILE FILES "/home/froglake/reach_and_grasp_ws/src/wam_control/package.xml")
endif()

