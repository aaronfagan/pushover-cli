#!/bin/bash

var=$(awk -F'"' '/^VERSION=/ {print $2}' /usr/local/bin/pushover )
echo $var

cp pushover /usr/local/bin/pushover
chmod +x -R /usr/local/bin/pushover

printf '\033[0;37m'
printf "\nPushover CLI upgraded successfully from  to ! Run \"pushover --help\" for usage instructions.\n"
printf '\033[0m\n'