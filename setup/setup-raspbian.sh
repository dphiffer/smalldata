#!/bin/sh

if [ -z "$1" ] ; then
	echo "Usage: setup-raspbian.sh [hostname]"
	exit 1
fi

host="$1"
echo "Setting up host $1"

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y screen git ufw fail2ban unattended-upgrades autossh

sudo echo $1 > /etc/hostname
sudo sed -i "s/raspberrypi/$1/g" /etc/hosts
