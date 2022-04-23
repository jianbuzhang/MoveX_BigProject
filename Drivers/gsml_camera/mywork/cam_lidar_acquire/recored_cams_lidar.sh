#!/bin/bash

cd /home/dell/calib_data

rosbag record /left_camera/image_raw/compressed /rslidar_points
