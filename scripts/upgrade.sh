#!/bin/bash
VERSION=$(awk -F'"' '/^VERSION=/ {print $2}' /opt/pushover-cli/bin/pushover)
if [ "$1" == "$VERSION" ]
then
	echo -ne '\033[0;37m'
	echo -ne "\nPushover CLI is already the latest version (v$1).\n\n"
	echo -ne '\033[0m'
else
	cp /opt/pushover-cli/bin/pushover /usr/local/bin/pushover
	VERSION=$(awk -F'"' '/^VERSION=/ {print $2}' /usr/local/bin/pushover)
	chmod +x -R /usr/local/bin/pushover
	echo -ne '\033[0;37m'
	echo -ne "\nPushover CLI upgraded successfully (v$1 => v$VERSION).\n\n"
	echo -ne '\033[0m'
fi
