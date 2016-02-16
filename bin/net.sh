#!/bin/bash

usage() {
	echo "Usage: ./net.sh <start|stop|restart>"
}

net_service() {
	service networking $1 2> /dev/null
	service network-manager $1 2> /dev/null
}

if [[ "$1" = start || "$1" = up ]]; then
	echo Starting services...

	net_service start
elif [[ "$1" = stop || "$1" = down ]]; then
	echo Stopping services...

	net_service stop
elif [ "$1" = restart ]; then
	echo Restarting services...

	net_service restart
else
	usage
	exit 1
fi

if [ "$?" = 0 ]; then
	echo Finished
else
	echo Failed
fi
