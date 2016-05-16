#!/bin/sh

host=`cat /etc/hostname`
ssh_dir="$HOME/.ssh"

mkdir -p "$ssh_dir"
chmod 700 "$ssh_dir"

if [ ! -f "$ssh_dir/$host" ] ; then
	ssh-keygen -f "$ssh_dir/$host" -t rsa -N ''
	cat >> "$ssh_dir/config" <<- EOF
		Host smalldata.coop
		    IdentityFile ${ssh_dir}/${host}
		    ServerAliveInterval 30
		    ServerAliveCountMax 3
	EOF
fi

echo "Your public key:"
echo "----------------"
cat "$ssh_dir/$host.pub"
