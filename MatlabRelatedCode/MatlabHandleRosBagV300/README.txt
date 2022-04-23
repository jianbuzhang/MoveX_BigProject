1操作步骤：
1.将ROS bag 拷贝到lcc目录下，并重命名为lcc.bag，其他目录结构保持不变；
2.在matlab中，将当前目录设置为LidarCameraCalibration；
3.运行live script： ReadLidarAndImageDataFromRosbag.mlx；
4.运行live script： LidarCameraCalibration.mlx；
（1）.前视标定计算ROI采用0°， 即calib_roi = helperComputeROI(undistort_image_corners_3d, 0.10, 0.0)
（2）.左后视标定计算ROI采用120°， 即calib_roi = helperComputeROI(undistort_image_corners_3d, 0.10, 120.0)
（3）.左后视标定计算ROI采用-120°， 即calib_roi = helperComputeROI(undistort_image_corners_3d, 0.10, -120.0)
（4）.确认showExtrinsics(cameraParams, 'CameraCentric')输出图像中没有明显的检测错误；
（5）.确认showExtrinsics(cameraParams, 'PatternCentric')输出图像中没有明显的检测错误；
（6）.确认helperFuseLidarCamere(...)步骤中没有明显的错误；
（7）.确认helperShowError(errors)步骤中平移误差在2cm左右，角度误差在2°左右，重投影误差在10像素左右；
（8）.确认helperShowError(errors)步骤中数据量大于20个。