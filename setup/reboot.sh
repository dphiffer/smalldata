#!/bin/sh

http_port=8001
ssh_port=2201

date=`date "+%Y-%m-%d %H:%M:%S"`
echo "reboot $date" >> reboot.log

sleep 15

/usr/bin/screen -S tunnel-$http_port -d -m /usr/bin/autossh smalldata.coop -N -R $http_port:localhost:80
/usr/bin/screen -S tunnel-$ssh_port -d -m /usr/bin/autossh smalldata.coop -N -R $ssh_port:localhost:22
