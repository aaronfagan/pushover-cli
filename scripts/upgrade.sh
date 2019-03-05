#!/bin/bash
DIR_BIN_LOCAL="/usr/local/bin"
DIR_BIN_TEMP="$1/bin"
echo "VAR: $1"
VERSION_OLD=$(awk -F'"' '/^VERSION=/ {print $2}' $DIR_BIN_LOCAL/pushover)
VERSION_NEW=$(awk -F'"' '/^VERSION=/ {print $2}' $DIR_BIN_TEMP/pushover)
if [ "$VERSION_OLD" == "$VERSION_NEW" ]
then
	echo -ne '\033[0;37m'
	echo -ne "\nPushover CLI is already the latest version (v$VERSION_OLD). $1\n\n"
	echo -ne '\033[0m'
else
	cp $DIR_BIN_TEMP/pushover $DIR_BIN_LOCAL/pushover
	chmod +x $DIR_BIN_LOCAL/pushover
	echo -ne '\033[0;37m'
	echo -ne "\nPushover CLI upgraded successfully (v$VERSION_OLD => v$VERSION_NEW).\n\n"
	echo -ne '\033[0m'
fi
