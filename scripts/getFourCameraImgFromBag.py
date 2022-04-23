# coding=UTF-8
import rosbag
import roslib  # roslib.load_manifest(PKG)
import rospy
import cv2
from cv_bridge import CvBridge
from sensor_msgs.msg import Image
import time
import datetime
import os

st = "1626084233.914591789".split(".")
tm = time.localtime(float(st[0]))
data_msecs = int(st[1][0:3])
otherStyleTime1 = time.strftime("%Y%m%d%H%M%S", tm) + str(data_msecs)


working_directory = os.getcwd()
bag_file = '2021-12-17-14-05-30.bag'

base_name = bag_file.split(".")[0]


root_dir = os.path.join(working_directory,base_name)
if not os.path.exists(root_dir):
    os.makedirs(root_dir)

bag = rosbag.Bag(bag_file, "r")

bridge = CvBridge()
topics = ['/usb_cam0/image_raw/compressed','/usb_cam1/image_raw/compressed','/usb_cam2/image_raw/compressed','/usb_cam3/image_raw/compressed']

for topic in topics:
    cam = topic.split("/")[1]
    sub_dir = os.path.join(root_dir,cam)
    if not os.path.exists(sub_dir):
        os.makedirs(sub_dir)
    bag_data = bag.read_messages(topic)
    for topic, msg, t in bag_data:
        cv_image = bridge.compressed_imgmsg_to_cv2(msg, "bgr8")
        # cv2.imshow("Image window", cv_image)
        # imshow可有可无只是为了检验是否在提取图像，并展示
        timestr = "%.6f" % msg.header.stamp.to_sec()
        # %.6f表示小数点后带有6位，可根据精确度需要修改；
        image_name = timestr + ".jpg"  # 图像命名：时间戳.jpg
        print(image_name)

        image_name = os.path.join(sub_dir,image_name)

        cv2.imwrite(image_name, cv_image)  #保存；
        timeArray = time.localtime(msg.header.stamp.to_sec())
        ct = msg.header.stamp
        data_msecs = ct.nsecs//1000000
        otherStyleTime1 = time.strftime("%Y%m%d%H%M%S", timeArray)+str(data_msecs)

