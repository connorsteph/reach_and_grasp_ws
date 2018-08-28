# Install script for directory: /home/froglake/reach_and_grasp_ws/src/hil_servoing

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hil_servoing/msg" TYPE FILE FILES
    "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TaskIds.msg"
    "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackPoint.msg"
    "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackedPoints.msg"
    "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/EndEffectorPoints.msg"
    "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/Error.msg"
    "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/ErrorInfo.msg"
    "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/Teleop.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hil_servoing/cmake" TYPE FILE FILES "/home/froglake/reach_and_grasp_ws/build/hil_servoing/catkin_generated/installspace/hil_servoing-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/froglake/reach_and_grasp_ws/devel/include/hil_servoing")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/froglake/reach_and_grasp_ws/devel/share/common-lisp/ros/hil_servoing")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/froglake/reach_and_grasp_ws/devel/lib/python2.7/dist-packages/hil_servoing")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/froglake/reach_and_grasp_ws/devel/lib/python2.7/dist-packages/hil_servoing")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/froglake/reach_and_grasp_ws/build/hil_servoing/catkin_generated/installspace/hil_servoing.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hil_servoing/cmake" TYPE FILE FILES "/home/froglake/reach_and_grasp_ws/build/hil_servoing/catkin_generated/installspace/hil_servoing-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hil_servoing/cmake" TYPE FILE FILES
    "/home/froglake/reach_and_grasp_ws/build/hil_servoing/catkin_generated/installspace/hil_servoingConfig.cmake"
    "/home/froglake/reach_and_grasp_ws/build/hil_servoing/catkin_generated/installspace/hil_servoingConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hil_servoing" TYPE FILE FILES "/home/froglake/reach_and_grasp_ws/src/hil_servoing/package.xml")
endif()

