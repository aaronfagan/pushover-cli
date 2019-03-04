#!/bin/bash
DIR_BIN_TEMP="/tmp/pushover-cli/bin"
DIR_BIN="/usr/local/bin"
VERSION_OLD=$(awk -F'"' '/^VERSION=/ {print $2}' $DIR_BIN/pushover)
VERSION_NEW=$(awk -F'"' '/^VERSION=/ {print $2}' $DIR_BIN_TEMP/pushover)
if [ "$VERSION_OLD" == "$VERSION_NEW" ]
then
	echo -ne '\033[0;37m'
	echo -ne "\nPushover CLI is already the latest version (v$VERSION_OLD).\n\n"
	echo -ne '\033[0m'
else
	cp $DIR_BIN_TEMP/pushover $DIR_BIN/pushover
	chmod +x $DIR_BIN/pushover
	echo -ne '\033[0;37m'
	echo -ne "\nPushover CLI upgraded successfully (v$VERSION_OLD => v$VERSION_NEW).\n\n"
	echo -ne '\033[0m'
fi
