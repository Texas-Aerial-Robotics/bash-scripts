#!/bin/bash

echo " INSTALL DEPENDENCIES/CATKIN"

yes |sudo apt-get install python-catkin-tools

mkdir -p ~/catkin_ws/src

cd ~/catkin_ws

catkin init

cd ~/catkin_ws

wstool init ~/catkin_ws/src

ROS_DISTRO=melodic

rosinstall_generator --upstream --rosdistro $ROS_DISTRO mavros | tee /tmp/mavros.rosinstall

rosinstall_generator --rosdistro $ROS_DISTRO mavlink | tee -a /tmp/mavros.rosinstall

wstool merge -t src /tmp/mavros.rosinstall

wstool update -t src

yes |rosdep install --from-paths src --ignore-src --rosdistro `echo $ROS_DISTRO` -y

catkin build

echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc

source ~/.bashrc
