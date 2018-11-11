#!/bin/bash
echo "Terminal 2"
echo "Run Gazebo"
cd ~/ardupilot/ArduCopter/
gazebo --verbose ~/ardupilot_gazebo/gazebo_worlds/iris_irlock_demo.world
