#!/bin/sh


echo "BEGIN"
gnome-terminal  --tab -e  ./sim_run/term1.sh &
gnome-terminal  --tab -e ./sim_run/term2.sh &
gnome-terminal -e  ./sim_run/term3.sh &
wait 
echo " LOADED"
