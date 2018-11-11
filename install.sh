#!/bin/bash

chmod +x ./installs/instrosinstall.sh

chmod +x ./installs/catkininstall.sh

chmod +x ./installs/gazinst.sh

chmod +x ./installs/simve_setup.sh

echo "RUN INITIAL SIM TO INIT PARAMETERS"

chmod +x ./installs/run_sim.sh

chmod +x ./installs/simve_setup.sh

chmod +x ./installs/RDS.sh

./installs/rosinstall.sh

./installs/catkininstall.sh

./installs/gazinst.sh

./installs/simve_setup.sh

./installs/run_sim.sh

./installs/RDS.sh




