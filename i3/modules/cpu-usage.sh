#!/bin/bash

USAGE=$(iostat -c 2>&1 | grep --line-buffered -v '^$\|^Linux' | grep --line-buffered '\.' | awk '{print 100-$6"%"}')
TEMP=$(cut -c 1,2 /sys/class/thermal/thermal_zone*/temp)


if [$USAGE > 20%]; then
	echo "[ $USAGE  $TEMPºC]"
fi
