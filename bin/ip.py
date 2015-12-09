#!/usr/bin/env python
# coding: utf-8
#
# Script made by Lucas Cordeiro
# https://www.github.com/lucasecdb/
#
# Gets current IP address
#
import socket

white = "\033[39m"
red   = "\033[31m"
rebel = ""

ip = socket.gethostbyname(socket.gethostname())

if ip == "127.0.0.1":
	ip = socket.getfqdn()

print red + rebel + " " + ip + white
