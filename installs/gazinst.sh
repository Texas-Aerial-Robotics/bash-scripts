#!/bin/bash


cd ~

sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'

wget http://packages.osrfoundation.org/gazebo.key -O | sudo apt-get add -

sudo apt update

cd ~

git clone https://github.com/SwiftGust/ardupilot_gazebo
cd ardupilot_gazebo
git checkout gazebo9
mdkir build 
cd build

cmake ..
make -j4
sudo make install

echo 'export GAZEBO_MODEL_PATH=~/ardupilot_gazebo/gazebo_models' >> ~/.bashrc
source ~/.bashrc

hg clone https://bitbucket.org/osrf/gazebo_models ~/gazebo_ws/gazebo_models
cd ~/gazebo_ws/gazebo_models
echo 'export GAZEBO_MODEL_PATH=~/gazebo_ws/gazebo_models' >> ~/.bashrc
source ~/.bashrc

