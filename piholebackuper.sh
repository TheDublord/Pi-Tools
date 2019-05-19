#!/bin/bash
if [ -f "/usr/bin/zip" ]
	then
exec sudo zip ~/pihole.zip /etc/pihole/*
	else
echo "Please install zip to use this. (sudo apt install zip)"
fi
