#!/bin/bash
mkdir /opt/pushover-cli
git clone git@github.com:aaronfagan/pushover-cli.git /opt
cd /opt/pushover-cli
chmod +x upgrade.sh
cp pushover /usr/local/bin/pushover
chmod +x -R /usr/local/bin/pushover
rm -rf /opt/pushover-cli
cd -
printf '\033[0;37m'
printf '\nPushover CLI upgraded successfully! Run "pushover --help" for usage instructions.\n'
printf '\033[0m\n'