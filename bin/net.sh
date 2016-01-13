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
	echo Finished

elif [ "$1" = stop ]; then
	echo Stopping services...

	net_service stop
	echo Finished

elif [ "$1" = restart ]; then
	echo Restarting services...

	net_service restart
	echo Finished

else
	usage
	exit
fi
