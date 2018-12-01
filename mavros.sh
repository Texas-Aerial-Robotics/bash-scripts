#!/bin/bash

GAZROS=~/catkin_ws/src/Gazebo-Ros/launch/

LAUNCH=$1

GAZROS=$GAZROS$LAUNCH

if [ -e $GAZROS ]
then	
	echo "Terminal One:"
	echo "yoke"
	gnome-terminal --tab --command="roslaunch gazebo_ros_sim $LAUNCH"

	echo "Do you want to add camera view[Y/N]"

	read camera

	if [ $camera == "Y" ] 
	then
		echo "Terminal 4 "
	fi
fi

