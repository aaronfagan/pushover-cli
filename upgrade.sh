#!/bin/bash
cp pushover /usr/local/bin/pushover;
chmod +x -R /usr/local/bin/pushover;
rm -rf `dirname "$(realpath $0)"`;
printf '\033[0;37m';
printf '\nPushover CLI upgraded successfully! Run "pushover --help" for usage instructions.\n';
printf '\033[0m\n';