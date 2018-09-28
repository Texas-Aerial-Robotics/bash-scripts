#!/bin/bash

clear

echo "Installing sublime text"
echo "---------------------------"
echo "GPG Key"

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

echo "https sources"
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
echo "Get the dev"

sudo apt-get update
sudo apt-get install sublime-text


