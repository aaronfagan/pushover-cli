#!/bin/bash
DIR_BIN_LOCAL="/usr/local/bin"
DIR_BIN_TEMP="$1/bin"
VERSION_OLD=$2
VERSION_NEW=$(awk -F'"' '/^VERSION=/ {print $2}' $DIR_BIN_TEMP/pushover)
cp $DIR_BIN_TEMP/pushover $DIR_BIN_LOCAL/pushover
chmod +x $DIR_BIN_LOCAL/pushover
if [ "$VERSION_OLD" == "$VERSION_NEW" ]; then
	echo -ne "\nPushover CLI is already the latest version (v$VERSION_OLD).\n\n"
else
	echo -ne "\nPushover CLI upgraded successfully (v$VERSION_OLD => v$VERSION_NEW).\n\n"
fi
