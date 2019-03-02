#!/bin/bash
cp pushover /usr/local/bin/pushover
chmod +x -R /usr/local/bin/pushover
VERSION=$(awk -F'"' '/^VERSION=/ {print $2}' pushover)
rm -rf `dirname "$(realpath $0)"`
printf '\033[0;37m'
printf '\nPushover CLI (v$VERSION) installed successfully! Run "pushover --help" for usage instructions.\n'
printf '\033[0m\n'
