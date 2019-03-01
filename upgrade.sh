#!/bin/bash
VERSION=$(awk -F'"' '/^VERSION=/ {print $2}' /opt/pushover-cli/pushover)
if [ "$1" == "$VERSION" ]
then
	printf '\033[0;37m'
	printf "\nPushover CLI is already the latest version ($1).\n"
	printf '\033[0m\n'
else
	cp /opt/pushover-cli/pushover /usr/local/bin/pushover
	VERSION=$(awk -F'"' '/^VERSION=/ {print $2}' /usr/local/bin/pushover)
	chmod +x -R /usr/local/bin/pushover
	printf '\033[0;37m'
	printf "\nPushover CLI upgraded from version $1 to $VERSION! Run \"pushover --help\" for usage instructions.\n"
	printf '\033[0m\n'
fi
