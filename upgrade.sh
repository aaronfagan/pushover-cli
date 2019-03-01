#!/bin/bash
VER_CURRENT="1.0.1"
cp pushover /usr/local/bin/pushover
chmod +x -R /usr/local/bin/pushover
printf '\033[0;37m'
printf "\nPushover CLI upgraded successfully from $1 to $VER_CURRENT! Run \"pushover --help\" for usage instructions.\n"
printf '\033[0m\n'