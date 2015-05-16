#!/bin/bash -eu

cd `dirname $0`

print_usage() {
	echo "Usage: ./start-ssh.sh <container_name> <ssh_port>"
}

container_name=$1
ssh_port=$2

if [ $# != 2 ]; then
	print_usage
	exit 1
fi

docker run -d -p $ssh_port:22 $container_name /usr/sbin/sshd -D
