#!/bin/bash
source /usr/local/bin/pushover
echo $VERSION
cp pushover /usr/local/bin/pushover
chmod +x -R /usr/local/bin/pushover
source /usr/local/bin/pushover
echo $VERSION"
printf '\033[0;37m'
printf "\nPushover CLI upgraded successfully from  to ! Run \"pushover --help\" for usage instructions.\n"
printf '\033[0m\n'