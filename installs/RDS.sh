#!/bin/bash

sudo apt install ros-melodic-gazebo-ros ros-melodic-gazebo-plugins -y
cd ~/catkin_ws/src
both="0"
sudo apt-get install libgeographic-dev -y
sudo apt-get install geographiclib-tools -y
sudo apt-get install ros-melodic-geographic-msgs -y
cd ~/catkin_ws/src/mavros/mavros/scripts
sudo ./install_geographiclib_datasets.sh
echo " Would you like Mission 8 or Mission 7 packages or Neither [7/8/both,None]"
read Package
if [ $Package == 'both' ]
then
	both="1"
fi
if [ $both == "1" ]
	then
		Package="7"
fi

if [ $Package == "7" ]
then
# Checking for installed packages
	if [ ! -d ~/catkin_ws/src/Gazebo-Ros ]
	then
		echo "Do you want to install Gazebo-Ros?[y/n]"
		read input	 
	
		if [ $input == "y" ]
		then
			cd ~/catkin_ws/src
		git clone https://github.com/Texas-Aerial-Robotics/Gazebo-Ros.git
		fi
	fi
	if [ ! -d ~/Computations ]
	then
		echo "Do you want to install Computations?[y/n]"
		read input	
		
		if [ $input == "y" ]
		then
			cd ~
		git clone https://github.com/Texas-Aerial-Robotics/Computations.git
		fi
	fi
	if [ ! -d ~/catkin_ws/src/StratNode ]
	then
		echo "Do you want to install StratNode?[y/n]"
		read input	
		
		if [ $input == "y" ]
		then
		cd ~/catkin_ws/src
		git clone https://github.com/Texas-Aerial-Robotics/StratNode.git
		fi
	fi
	if [ ! -d ~/catkin_ws/src/darknet_ros ]
	then
		echo "Do you want to install Darknet Ros ?[y/n]"
		read input	
		
		if [ $input == "y" ]
		then
		cd ~/catkin_ws/src
		git clone https://github.com/Texas-Aerial-Robotics/darknet_ros.git
		fi
	fi
	if [ ! -d ~/catkin_ws/src/Transformations-Ros ]
	then
		echo "Do you want to install the Transformations package?[y/n]"
		read input	
		
		if [ $input == "y" ]
		then
		cd ~/catkin_ws/src
		git clone https://github.com/Texas-Aerial-Robotics/Transformations-Ros.git
		fi
	fi
	if [ ! -d ~/catkin_ws/src/camera_signalman ]
	then
		echo "Do you want to install the camera_signalman package ?[y/n]"
		read input	
		
		if [ $input == "y" ]
		then
		cd ~/catkin_ws/src
		git clone https://github.com/Texas-Aerial-Robotics/camera_signalman.git
		fi
	fi
	if [ ! -d ~/catkin_ws/src/roomba_controls ]
	then
		echo "Do you want to install the rooma_controls package ?[y/n]"
		read input	
		
		if [ $input == "y" ]
		then
		cd ~/catkin_ws/src
		git clone https://github.com/Texas-Aerial-Robotics/roomba_controls.git
		fi
	fi
	if [ ! -d ~/catkin_ws/src/elikos_msgs ]
	then
		echo "Do you want to install the elikos_msgs packages ?[y/n]"
		read input	
		
		if [ $input == "y" ]
		then
		cd ~/catkin_ws/src
		git clone https://github.com/Texas-Aerial-Robotics/elikos_msgs.git
		fi
	fi
	if [ ! -d ~/catkin_ws/src/ComputerVision ]
	then
		echo "Do you want to install the ComputerVision packages ?[y/n]"
		read input	
		
		if [ $input == "y" ]
		then
		cd ~/catkin_ws/src
		git clone https://github.com/Texas-Aerial-Robotics/ComputerVision.git
		fi
	fi
	if [ ! -d ~/Controls-Other ]
	then
		echo "Do you want to install the Controls-Other packages ?[y/n]"
		read input	
		
		if [ $input == "y" ]
		then
		cd ~
		git clone https://github.com/Texas-Aerial-Robotics/Controls-Other.git
		fi
	fi
	if [ ! -d ~/catkin_ws/src/video_stream_opencv ]
	then
		echo "Do you want to install the video_stream_opencv packages?[y/n]"
		read input	
	
		if [ $input == "y" ]
		then
		git clone https://github.com/Texas-Aerial-Robotics/video_stream_opencv.git
		fi
	fi

	if [ ! -d ~/catkin_ws/src/cv3_bridge ]
	then
		echo "Do you want to install the cv3_bridge packages?[y/n]"
		read input	
		
		if [ $input == "y" ]
		then
		cd ~/catkin_ws/src
		git clone https://github.com/Texas-Aerial-Robotics/cv3_bridge.git
		fi
	fi
fi
if [ $both == "1" ]
	then
		Package="8"
fi
if [ $Package == "8" ]
then
# Checking for installed packages
	if [ ! -d ~/catkin_ws/src/mission8_sim ]
	then
		echo "Do you want to install the mission8_sim packages?[y/n]"
		read input
		sudo apt-get install libglfw3 libglfw3-dev libglew-dev -y
		if [ $input == "y" ]
		then
		git clone https://github.com/Texas-Aerial-Robotics/mission8_sim.git
		fi
	fi

	if [ ! -d ~/catkin_ws/src/actorcontrol_gazebo ]
	then
		echo "Do you want to install the actorcontrol_gazebo packages?[y/n]"
		read input	
		
		if [ $input == "y" ]
		then
		cd ~/catkin_ws/src
		git clone https://github.com/Texas-Aerial-Robotics/actorcontrol_gazebo.git
		fi
	fi
	if [ ! -d ~/catkin_ws/src/Mission8_OutOfControls ]
	then
		echo "Do you want to install the Mission_OutofControls packages ?[y/n]"
		read input	
		
		if [ $input == "y" ]
		then
		cd ~/catkin_ws/src
		git clone https://github.com/Texas-Aerial-Robotics/Mission8_OutOfControls.git
		fi
	fi
	if [ ! -d ~/ORB_SLAM2 ]
	then
		echo "Do you want to install the ORB_SLAM2 package?[y/n]"
		read input	
		
		if [ $input == "y" ]
		then
		cd ~
		git clone https://github.com/Texas-Aerial-Robotics/ORB_SLAM2.git
		fi
	fi
	if [ ! -d ~/catkin_ws/src/camera_signalman ]
	then
		echo "Do you want to install the camera_signalman package ?[y/n]"
		read input	
		
		if [ $input == "y" ]
		then
		cd ~/catkin_ws/src
		git clone https://github.com/Texas-Aerial-Robotics/camera_signalman.git
		fi
	fi
		if [ ! -d ~/Controls-Other ]
	then
		echo "Do you want to install the Controls-Other packages ?[y/n]"
		read input	
		
		if [ $input == "y" ]
		then
		cd ~
		git clone https://github.com/Texas-Aerial-Robotics/Controls-Other.git
		fi
	fi
	if [ ! -d ~/catkin_ws/src/video_stream_opencv ]
	then
		echo "Do you want to install the video_stream_opencv packages?[y/n]"
		read input	
	
		if [ $input == "y" ]
		then
		git clone https://github.com/Texas-Aerial-Robotics/video_stream_opencv.git
		fi
	fi

	if [ ! -d ~/catkin_ws/src/cv3_bridge ]
	then
		echo "Do you want to install the cv3_bridge packages?[y/n]"
		read input	
		
		if [ $input == "y" ]
		then
		cd ~/catkin_ws/src
		git clone https://github.com/Texas-Aerial-Robotics/cv3_bridge.git
		fi
	fi
fi

	
	
echo 'export GAZEBO_MODEL_PATH=${GAZEBO_MODEL_PATH}:~/Computations/roomba_host/models' >> ~/.bashrc
echo 'export GAZEBO_PLUGIN_PATH=${GAZEBO_MODEL_PATH}:~/Computations/roomba_host/build' >> ~/.bashrc

cd ~/catkin_ws/
catkin build
source ~/.bashrc

sudo apt install ros-melodic-image-view -y


