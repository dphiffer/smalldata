#!/bin/sh

NGROK_DOWNLOAD_URL="https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip"

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y screen git ufw fail2ban unattended-upgrades

cd /usr/local/smalldata/bin
curl -O $NGROK_DOWNLOAD_URL
unzip ngrok-stable-linux-arm.zip
rm ngrok-stable-linux-arm.zip

cd -
