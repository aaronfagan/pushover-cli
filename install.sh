#!/bin/bash
cp pushover /usr/local/bin/pushover
chmod +x -R /usr/local/bin/pushover
rm -rf `dirname "$(realpath $0)"`
VERSION=$(awk -F'"' '/^VERSION=/ {print $2}' /usr/local/bin/pushover)
echo -ne '\033[0;37m'
echo -ne "\nPushover CLI (v$VERSION) installed successfully! Run \"pushover --help\" for usage instructions.\n\n"
echo -ne '\033[0m'
