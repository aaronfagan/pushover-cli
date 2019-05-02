#!/bin/bash

echo -ne '\033[0;37m'
echo -ne "\nInstalling latest version..."
git clone --depth 1 git@github.com:aaronfagan/pushover-cli.git /tmp/pushover-cli > /dev/null 2>&1
cp /tmp/pushover-cli/bin/pushover /usr/local/bin/pushover
chmod +x /usr/local/bin/pushover
rm -rf /tmp/pushover-cli
echo -ne "done!\n"
VERSION=$(awk -F'"' '/^VERSION=/ {print $2}' /usr/local/bin/pushover)
echo -ne "\n\nPushover CLI (v${VERSION}) installed successfully! Run 'pushover --help' for usage instructions.\n\n"
echo -ne '\033[0m'
