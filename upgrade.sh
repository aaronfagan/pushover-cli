#!/bin/bash

source /usr/local/bin/pushover
$VERSION_OLD="$VERSION"
cp pushover /usr/local/bin/pushover
chmod +x -R /usr/local/bin/pushover
source /usr/local/bin/pushover
$VERSION_NEW="$VERSION"
printf '\033[0;37m'
printf "\nPushover CLI upgraded successfully from $VERSION_OLD to $VERSION_NEW! Run \"pushover --help\" for usage instructions.\n"
printf '\033[0m\n'