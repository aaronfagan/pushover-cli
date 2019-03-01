#!/bin/bash
VERSION=$(awk -F'"' '/^VERSION=/ {print $2}' /usr/local/bin/pushover )
cp /opt/pushover-cli/pushover /usr/local/bin/pushover
chmod +x -R /usr/local/bin/pushover
printf '\033[0;37m'
printf "\nPushover CLI upgraded successfully from $1 to $VERSION! Run \"pushover --help\" for usage instructions.\n"
printf '\033[0m\n'