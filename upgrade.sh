#!/bin/bash
VERSION_NEW="1.0.1"
source /usr/local/bin/pushover
echo $VERSION
cp pushover /usr/local/bin/pushover
chmod +x -R /usr/local/bin/pushover
printf '\033[0;37m'
printf "\nPushover CLI upgraded successfully from $VERSION to $VERSION_NEW! Run \"pushover --help\" for usage instructions.\n"
printf '\033[0m\n'