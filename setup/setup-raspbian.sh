#!/bin/sh

if [ -z "$1" ] ; then
	echo "Usage: setup-raspbian.sh [hostname]"
	exit 1
fi

host="$1"
echo "Setting up host $host"

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y screen git ufw fail2ban unattended-upgrades autossh

sudo echo $host > /etc/hostname
sudo sed -i "s/raspberrypi/$host/g" /etc/hosts

echo <<< EOF
   ____           ____  ___       __
  / __/_ _  ___ _/ / / / _ \___ _/ /____ _
 _\ \/  ' \/ _ `/ / / / // / _ `/ __/ _ `/
/___/_/_/_/\_,_/_/_/ /____/\_,_/\__/\_,_/

Meow! Welcome to ${host}.smalldata.coop.
EOF > /etc/motd
