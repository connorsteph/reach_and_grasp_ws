# Install script for directory: /home/fuego/reach_and_grasp_ws/src/wam_control

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/fuego/reach_and_grasp_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_control/msg" TYPE FILE FILES
    "/home/fuego/reach_and_grasp_ws/src/wam_control/msg/RTCartPos.msg"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/msg/RTCartVel.msg"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/msg/RTJointPos.msg"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/msg/RTJointVel.msg"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/msg/RTOrtnPos.msg"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/msg/RTOrtnVel.msg"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/msg/RTPose.msg"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/msg/MatrixMN.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_control/srv" TYPE FILE FILES
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/CartPosMove.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/GravityComp.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/Hold.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/JointMove.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/JointMoveBlock.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/OrtnMove.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/OrtnSplitMove.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/PoseMove.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/CartVel.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/BHandFingerPos.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/BHandFingerVel.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/BHandGraspPos.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/BHandGraspVel.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/BHandSpreadPos.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/BHandSpreadVel.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/Teach.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/Play.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/BHandPinchPos.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/Link.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/ForceTorqueTool.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/FollowPath.srv"
    "/home/fuego/reach_and_grasp_ws/src/wam_control/srv/GetToolPose.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_control/cmake" TYPE FILE FILES "/home/fuego/reach_and_grasp_ws/build/wam_control/catkin_generated/installspace/wam_control-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/fuego/reach_and_grasp_ws/devel/include/wam_control")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/fuego/reach_and_grasp_ws/devel/share/common-lisp/ros/wam_control")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/fuego/reach_and_grasp_ws/devel/lib/python2.7/dist-packages/wam_control")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/fuego/reach_and_grasp_ws/devel/lib/python2.7/dist-packages/wam_control")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/fuego/reach_and_grasp_ws/build/wam_control/catkin_generated/installspace/wam_control.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_control/cmake" TYPE FILE FILES "/home/fuego/reach_and_grasp_ws/build/wam_control/catkin_generated/installspace/wam_control-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_control/cmake" TYPE FILE FILES
    "/home/fuego/reach_and_grasp_ws/build/wam_control/catkin_generated/installspace/wam_controlConfig.cmake"
    "/home/fuego/reach_and_grasp_ws/build/wam_control/catkin_generated/installspace/wam_controlConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_control" TYPE FILE FILES "/home/fuego/reach_and_grasp_ws/src/wam_control/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

