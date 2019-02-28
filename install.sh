#!/bin/bash
cp pushover /usr/local/bin/pushover;
chmod +x -R /usr/local/bin/pushover;
rm -rf `dirname "$(realpath $0)"`;
printf '\033[0;37m';
printf 'Pushover CLI installed successfully! Run "pushover --help" for usage instructions.';
printf '\033[0m\n';