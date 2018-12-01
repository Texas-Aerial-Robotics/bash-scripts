#!/bin/bash

chmod +x ./installs/rosinstall.sh

chmod +x ./installs/catkininstall.sh

chmod +x ./installs/gazinst.sh

chmod +x ./installs/simve_setup.sh

echo "RUN INITIAL SIM TO INIT PARAMETERS"

chmod +x ./installs/run_sim.sh

chmod +x ./installs/simve_setup.sh

chmod +x ./installs/RDS.sh

echo "ROSINSTALL[Y/N]"
read ros

if [ $ros == "Y" ]
then
./installs/rosinstall.sh
fi
./installs/catkininstall.sh

./installs/gazinst.sh

./installs/simve_setup.sh

./installs/run_sim.sh

./installs/RDS.sh




