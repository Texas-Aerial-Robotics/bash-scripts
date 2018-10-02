#!/bin/bash

echo " INSTALL DEPENDENCIES/CATKIN"

sudo apt-get install python-catkin-tools

mkdir -p ~/catkin_ws/src

cd ~/catkin_ws

catkin init

cd ~/catkin_ws

wstool init ~/catkin_ws/src

rosinstall_generator --upstream mavros | tee /tmp/mavros.rosinstall

rosinstall_generator mavlink | tee -a /tmp/mavros.rosinstall

wstool merge -t src /tmp/mavros.rosinstall

wstool update -t src

rosdep install --from-paths src --ignore-src --rosdistro `echo $ROS_DISTRO` -y

catkin build

echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc

source ~/.bashrc
