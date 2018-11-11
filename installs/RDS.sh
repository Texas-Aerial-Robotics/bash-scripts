#!/bin/bash

sudo apt install ros-melodic-gazebo-ros ros-melodic-gazebo-plugins
cd ~/catkin_ws/src
git clone https://github.com/Texas-Aerial-Robotics/Gazebo-Ros.git
cd ~
git clone https://github.com/Texas-Aerial-Robotics/Computations.git

echo 'export GAZEBO_MODEL_PATH=${GAZEBO_MODEL_PATH}:~/Computations/roomba_host/models' >> ~/.bashrc
echo 'export GAZEBO_PLUGIN_PATH=${GAZEBO_MODEL_PATH}:~/Computations/roomba_host/build' >> ~/.bashrc

cd ~/catkin_ws/
catkin build
source ~/.bashrc

sudo apt install ros-melodic-image-view


