#!/bin/sh

if [ -z "$1" ] ; then
	echo "Usage: sudo setup-raspbian.sh [hostname]"
	exit 1
fi

if [ "$EUID" -ne 0 ]
	then echo "Please run as root, or with sudo."
	exit
fi

host="$1"
echo "Setting up host $host"

apt-get update
apt-get upgrade -y
apt-get install -y screen git ufw fail2ban unattended-upgrades autossh

echo "$host" > /etc/hostname
sed -i "s/raspberrypi/$host/g" /etc/hosts
