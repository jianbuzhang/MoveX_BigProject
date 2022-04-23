# Install script for directory: /home/jinjian/MOVEX+GITHUB_CODE/MoveX_BigProject/ROS_QT_GUI/src/Ros_Qt5_Gui_App_ver_simple

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/jinjian/MOVEX+GITHUB_CODE/MoveX_BigProject/ROS_QT_GUI/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/jinjian/MOVEX+GITHUB_CODE/MoveX_BigProject/ROS_QT_GUI/build/Ros_Qt5_Gui_App_ver_simple/catkin_generated/installspace/robot_hmi_simple.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_hmi_simple/cmake" TYPE FILE FILES
    "/home/jinjian/MOVEX+GITHUB_CODE/MoveX_BigProject/ROS_QT_GUI/build/Ros_Qt5_Gui_App_ver_simple/catkin_generated/installspace/robot_hmi_simpleConfig.cmake"
    "/home/jinjian/MOVEX+GITHUB_CODE/MoveX_BigProject/ROS_QT_GUI/build/Ros_Qt5_Gui_App_ver_simple/catkin_generated/installspace/robot_hmi_simpleConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_hmi_simple" TYPE FILE FILES "/home/jinjian/MOVEX+GITHUB_CODE/MoveX_BigProject/ROS_QT_GUI/src/Ros_Qt5_Gui_App_ver_simple/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/robot_hmi_simple/robot_hmi_simple" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/robot_hmi_simple/robot_hmi_simple")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/robot_hmi_simple/robot_hmi_simple"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/robot_hmi_simple" TYPE EXECUTABLE FILES "/home/jinjian/MOVEX+GITHUB_CODE/MoveX_BigProject/ROS_QT_GUI/devel/lib/robot_hmi_simple/robot_hmi_simple")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/robot_hmi_simple/robot_hmi_simple" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/robot_hmi_simple/robot_hmi_simple")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/robot_hmi_simple/robot_hmi_simple"
         OLD_RPATH "/home/jinjian/Qt5.9.9/5.9.9/gcc_64/lib:/opt/ros/melodic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/robot_hmi_simple/robot_hmi_simple")
    endif()
  endif()
endif()

