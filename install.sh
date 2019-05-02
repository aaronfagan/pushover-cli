#!/bin/bash

echo -ne '\033[0;37m'
echo -ne "\nInstalling Pushover CLI..."
if [ -z "${1}" ]; then BRANCH="master"; fi
if [ "${1}" == "dev" ]; then BRANCH="develop"; fi
git clone --branch ${BRANCH} git@github.com:aaronfagan/pushover-cli.git /tmp/pushover-cli > /dev/null 2>&1
cp /tmp/pushover-cli/pushover /usr/local/bin/pushover
chmod +x /usr/local/bin/pushover
echo -ne "done!\n"
VERSION=$(awk -F'"' '/^VERSION=/ {print $2}' /usr/local/bin/pushover)
echo -ne "\nPushover CLI (v${VERSION}) installed successfully! Run 'pushover --help' for usage instructions.\n\n"
echo -ne '\033[0m'
if [ "${2}" != "upgrade" ]; then echo "######### UPGRADE DETECTED"!; fi
#rm -rf /tmp/pushover-cli