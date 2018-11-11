#!/bin/bash


cd ~/catkin_ws/

LAUNCH=$1

if [ -e $LAUNCH ]
then	
	echo "Do you want to add camera view[Y/N]"

	read camera

	if [ $camera == "Y" ] 
	then
		echo "Terminal 4 "
	fi
fi

