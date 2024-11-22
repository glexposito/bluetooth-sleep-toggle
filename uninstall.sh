#!/bin/bash

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

systemctl disable --now bluetooth-sleep-toggle.service

rm /etc/systemd/system/bluetooth-sleep-toggle.service
