#!/bin/bash


echo " SETTING SOURCES"

echo "-----------------"

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

echo " SET UP KEYS "

echo "-----------------"

sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

echo " INSTALLATION"

echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxx"

echo " UPDATING DEBIAN PACKAGES"

echo "-----------------"

sudo apt-get update

echo " INSTALL"

echo "-----------------"

yes | sudo apt-get install ros-melodic-desktop-full

echo "INITIALIZE"

echo "-----------------"
sudo rosdep init
rosdep update
echo "SETUP"

echo "-----------------"
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
echo " DEPENDENCIES "

yes | sudo apt-get install python-rosinstall python-rosinstall-generator python-wstool build-essential
