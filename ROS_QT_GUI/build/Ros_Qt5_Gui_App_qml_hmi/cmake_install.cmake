# Install script for directory: /home/jinjian/MOVEX+GITHUB_CODE/MoveX_BigProject/ROS_QT_GUI/src/Ros_Qt5_Gui_App_qml_hmi

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/jinjian/MOVEX+GITHUB_CODE/MoveX_BigProject/ROS_QT_GUI/build/Ros_Qt5_Gui_App_qml_hmi/catkin_generated/installspace/cyrobot_monitor_ver_qml_hmi.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cyrobot_monitor_ver_qml_hmi/cmake" TYPE FILE FILES
    "/home/jinjian/MOVEX+GITHUB_CODE/MoveX_BigProject/ROS_QT_GUI/build/Ros_Qt5_Gui_App_qml_hmi/catkin_generated/installspace/cyrobot_monitor_ver_qml_hmiConfig.cmake"
    "/home/jinjian/MOVEX+GITHUB_CODE/MoveX_BigProject/ROS_QT_GUI/build/Ros_Qt5_Gui_App_qml_hmi/catkin_generated/installspace/cyrobot_monitor_ver_qml_hmiConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cyrobot_monitor_ver_qml_hmi" TYPE FILE FILES "/home/jinjian/MOVEX+GITHUB_CODE/MoveX_BigProject/ROS_QT_GUI/src/Ros_Qt5_Gui_App_qml_hmi/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cyrobot_monitor_ver_qml_hmi/cyrobot_monitor_ver_qml_hmi" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cyrobot_monitor_ver_qml_hmi/cyrobot_monitor_ver_qml_hmi")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cyrobot_monitor_ver_qml_hmi/cyrobot_monitor_ver_qml_hmi"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cyrobot_monitor_ver_qml_hmi" TYPE EXECUTABLE FILES "/home/jinjian/MOVEX+GITHUB_CODE/MoveX_BigProject/ROS_QT_GUI/devel/lib/cyrobot_monitor_ver_qml_hmi/cyrobot_monitor_ver_qml_hmi")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cyrobot_monitor_ver_qml_hmi/cyrobot_monitor_ver_qml_hmi" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cyrobot_monitor_ver_qml_hmi/cyrobot_monitor_ver_qml_hmi")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cyrobot_monitor_ver_qml_hmi/cyrobot_monitor_ver_qml_hmi"
         OLD_RPATH "/home/jinjian/Qt5.9.9/5.9.9/gcc_64/lib:/opt/ros/melodic/lib:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cyrobot_monitor_ver_qml_hmi/cyrobot_monitor_ver_qml_hmi")
    endif()
  endif()
endif()

