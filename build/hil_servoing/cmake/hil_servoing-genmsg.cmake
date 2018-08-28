# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hil_servoing: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ihil_servoing:/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hil_servoing_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/ErrorInfo.msg" NAME_WE)
add_custom_target(_hil_servoing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hil_servoing" "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/ErrorInfo.msg" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/EndEffectorPoints.msg" NAME_WE)
add_custom_target(_hil_servoing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hil_servoing" "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/EndEffectorPoints.msg" "hil_servoing/TrackPoint"
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackedPoints.msg" NAME_WE)
add_custom_target(_hil_servoing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hil_servoing" "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackedPoints.msg" "hil_servoing/TrackPoint"
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/Teleop.msg" NAME_WE)
add_custom_target(_hil_servoing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hil_servoing" "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/Teleop.msg" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackPoint.msg" NAME_WE)
add_custom_target(_hil_servoing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hil_servoing" "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackPoint.msg" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/Error.msg" NAME_WE)
add_custom_target(_hil_servoing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hil_servoing" "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/Error.msg" ""
)

get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TaskIds.msg" NAME_WE)
add_custom_target(_hil_servoing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hil_servoing" "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TaskIds.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/ErrorInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hil_servoing
)
_generate_msg_cpp(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/EndEffectorPoints.msg"
  "${MSG_I_FLAGS}"
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hil_servoing
)
_generate_msg_cpp(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackedPoints.msg"
  "${MSG_I_FLAGS}"
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hil_servoing
)
_generate_msg_cpp(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/Teleop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hil_servoing
)
_generate_msg_cpp(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hil_servoing
)
_generate_msg_cpp(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/Error.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hil_servoing
)
_generate_msg_cpp(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TaskIds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hil_servoing
)

### Generating Services

### Generating Module File
_generate_module_cpp(hil_servoing
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hil_servoing
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hil_servoing_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hil_servoing_generate_messages hil_servoing_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/ErrorInfo.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_cpp _hil_servoing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/EndEffectorPoints.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_cpp _hil_servoing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackedPoints.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_cpp _hil_servoing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/Teleop.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_cpp _hil_servoing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackPoint.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_cpp _hil_servoing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/Error.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_cpp _hil_servoing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TaskIds.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_cpp _hil_servoing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hil_servoing_gencpp)
add_dependencies(hil_servoing_gencpp hil_servoing_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hil_servoing_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/ErrorInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hil_servoing
)
_generate_msg_lisp(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/EndEffectorPoints.msg"
  "${MSG_I_FLAGS}"
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hil_servoing
)
_generate_msg_lisp(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackedPoints.msg"
  "${MSG_I_FLAGS}"
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hil_servoing
)
_generate_msg_lisp(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/Teleop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hil_servoing
)
_generate_msg_lisp(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hil_servoing
)
_generate_msg_lisp(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/Error.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hil_servoing
)
_generate_msg_lisp(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TaskIds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hil_servoing
)

### Generating Services

### Generating Module File
_generate_module_lisp(hil_servoing
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hil_servoing
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hil_servoing_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hil_servoing_generate_messages hil_servoing_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/ErrorInfo.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_lisp _hil_servoing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/EndEffectorPoints.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_lisp _hil_servoing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackedPoints.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_lisp _hil_servoing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/Teleop.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_lisp _hil_servoing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackPoint.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_lisp _hil_servoing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/Error.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_lisp _hil_servoing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TaskIds.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_lisp _hil_servoing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hil_servoing_genlisp)
add_dependencies(hil_servoing_genlisp hil_servoing_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hil_servoing_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/ErrorInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hil_servoing
)
_generate_msg_py(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/EndEffectorPoints.msg"
  "${MSG_I_FLAGS}"
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hil_servoing
)
_generate_msg_py(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackedPoints.msg"
  "${MSG_I_FLAGS}"
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hil_servoing
)
_generate_msg_py(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/Teleop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hil_servoing
)
_generate_msg_py(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hil_servoing
)
_generate_msg_py(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/Error.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hil_servoing
)
_generate_msg_py(hil_servoing
  "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TaskIds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hil_servoing
)

### Generating Services

### Generating Module File
_generate_module_py(hil_servoing
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hil_servoing
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hil_servoing_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hil_servoing_generate_messages hil_servoing_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/ErrorInfo.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_py _hil_servoing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/EndEffectorPoints.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_py _hil_servoing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackedPoints.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_py _hil_servoing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/Teleop.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_py _hil_servoing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TrackPoint.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_py _hil_servoing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/Error.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_py _hil_servoing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg/TaskIds.msg" NAME_WE)
add_dependencies(hil_servoing_generate_messages_py _hil_servoing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hil_servoing_genpy)
add_dependencies(hil_servoing_genpy hil_servoing_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hil_servoing_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hil_servoing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hil_servoing
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hil_servoing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hil_servoing
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hil_servoing)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hil_servoing\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hil_servoing
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
