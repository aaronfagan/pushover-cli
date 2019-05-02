#!/bin/bash

echo -ne '\033[0;37m'
echo -ne "\nInstalling Pushover CLI..."
BRANCH="master"
if [ ${1} == "dev" ]; then BRANCH="develop"; fi
git clone --branch ${BRANCH} --depth 1 git@github.com:aaronfagan/pushover-cli.git /tmp/pushover-cli > /dev/null 2>&1
cp /tmp/pushover-cli/pushover /usr/local/bin/pushover
chmod +x /usr/local/bin/pushover
rm -rf /tmp/pushover-cli
echo -ne "done!\n"
VERSION=$(awk -F'"' '/^VERSION=/ {print $2}' /usr/local/bin/pushover)
echo -ne "\nPushover CLI (v${VERSION}) installed successfully! Run 'pushover --help' for usage instructions.\n\n"
echo -ne '\033[0m'
