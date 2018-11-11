#!/bin/bash

cd ~/catkin_ws/src

git clone https://github.com/Texas-Aerial-Robotics/Controls-ROS.git

cd ~/catkin_ws

catkin build

echo "Arudupilot"

cd ~

git clone https://github.com/Texas-Aerial-Robotics/ardupilot.git
cd ardupilot
git checkout Copter-3.5
git submodule update --init --recursive

sudo apt install python-matplotlib python-serial python-wxgtk3.0 python-wxtools python-lxml python-scipy python-opencv ccache gawk git python-pip python-pexpect
sudo pip2 install future pymavlink MAVProxy

PATH=/opt/ros/melodic/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:$HOME/ardupilot/Tools/autotest

echo " export PATH=$PATH" >> ~/.bashrc
echo "export PATH=/usr/lib/ccache:$PATH" >> ~/.bashrc
cd ~/ardupilot/ArduCopter

sim_vehicle.py -w
