#!/bin/bash

usage() {
	echo "Usage: ./net.sh <start|stop|restart>"
}

net_service() {
	service networking $1
	service network-manager $1
}

if [ "$1" = start ]; then
	echo Starting services...

	net_service start
elif [ "$1" = stop ]; then
	echo Stopping services...

	net_service stop
elif [ "$1" = restart ]; then
	echo Restarting services...

	net_service restart
else
	usage
	exit
fi

echo Finished
