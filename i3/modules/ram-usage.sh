#!/bin/bash 


TOTAL=$(egrep --color 'MemTotal' /proc/meminfo | grep -E -o '[[:digit:]]+')
FREE=$(egrep --color 'MemFree' /proc/meminfo | grep -E -o '[[:digit:]]+')
BUFFERS=$(egrep --color 'Buffers' /proc/meminfo | grep -E -o '[[:digit:]]+')
CACHE=$(egrep --color 'Cached' /proc/meminfo | grep -E -o '[[:digit:]]+')

USED=$(echo "$TOTAL - $FREE - $BUFFERS - $CACHE" | bc)

if [$USED > 8000000]; then
	echo "[$ $USED]" 
fi
