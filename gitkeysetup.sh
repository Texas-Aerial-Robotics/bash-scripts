#!/bin/bash

clear

echo " Setting up an SSH key !!!"
echo " enter your email"

read email

ssh-keygen -t rsa -b 4096 -C "$email"

echo "Press enter thrice"

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_rsa

sudo apt-get install xclip

xclip -sel clip < ~/.ssh/id_rsa.pub

echo " Now copy it into your settings/keys in github"
