# Install script for directory: /home/enis/ros_ws/src/intera_sdk/intera_examples

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/enis/ros_ws/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/intera_examples" TYPE FILE FILES "/home/enis/ros_ws/devel/include/intera_examples/SawyerJointSpringsExampleConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/enis/ros_ws/devel/lib/python3/dist-packages/intera_examples/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/intera_examples" TYPE DIRECTORY FILES "/home/enis/ros_ws/devel/lib/python3/dist-packages/intera_examples/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/intera_examples.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/intera_examples/cmake" TYPE FILE FILES
    "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/intera_examplesConfig.cmake"
    "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/intera_examplesConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/intera_examples" TYPE FILE FILES "/home/enis/ros_ws/src/intera_sdk/intera_examples/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/ik_service_client.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/go_to_joint_angles.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/joint_position_waypoints.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/joint_torque_springs.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/gripper_cuff_control.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/head_wobbler.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/joint_recorder.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/fk_service_client.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/joint_velocity_wobbler.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/navigator_io.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/joint_position_joystick.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/joint_position_keyboard.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/gripper_keyboard.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/stop_motion_trajectory.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/go_to_joint_angles_in_contact.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/joint_position_file_playback.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/go_to_cartesian_pose.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/head_display_image.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/joint_trajectory_client.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/joint_trajectory_file_playback.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/set_interaction_options.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/constrained_zeroG.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/gripper_joystick.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/lights_blink.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/camera_display.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/send_random_trajectory.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE PROGRAM FILES "/home/enis/ros_ws/build/intera_sdk/intera_examples/catkin_generated/installspace/send_traj_from_file.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intera_examples" TYPE DIRECTORY FILES "/home/enis/ros_ws/src/intera_sdk/intera_examples/scripts/" USE_SOURCE_PERMISSIONS)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/intera_examples/launch" TYPE DIRECTORY FILES "/home/enis/ros_ws/src/intera_sdk/intera_examples/launch/" USE_SOURCE_PERMISSIONS)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/intera_examples/share" TYPE DIRECTORY FILES "/home/enis/ros_ws/src/intera_sdk/intera_examples/share/" USE_SOURCE_PERMISSIONS)
endif()

