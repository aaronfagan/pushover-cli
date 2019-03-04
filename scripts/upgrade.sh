#!/bin/bash
VERSION_OLD=$(awk -F'"' '/^VERSION=/ {print $2}' /usr/local/bin/pushover)
VERSION_NEW=$(awk -F'"' '/^VERSION=/ {print $2}' /tmp/pushover-cli/bin/pushover)
if [ "$VERSION_OLD" == "$VERSION_NEW" ]
then
	echo -ne '\033[0;37m'
	echo -ne "\nPushover CLI is already the latest version (v$VERSION_OLD).\n\n"
	echo -ne '\033[0m'
else
	cp /tmp/pushover-cli/bin/pushover /usr/local/bin/pushover
	chmod +x /usr/local/bin/pushover
	echo -ne '\033[0;37m'
	echo -ne "\nPushover CLI upgraded successfully (v$VERSION_OLD => v$VERSION_NEW).\n\n"
	echo -ne '\033[0m'
fi
