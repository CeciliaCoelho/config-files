#!/bin/bash

MODE=$(supergfxctl -g)
USAGE=$(nvidia-smi | grep -E -o '[0-9][0-9]?%')
TEMP=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader)

if [$MODE = "integrated"]; then
	echo "[ $MODE]"
elif [$MODE = "hybrid"] || [$MODE = "dedicated"] || [$MODE = "compute"] ; then
	echo "[ $USAGE $TEMPºC]"
fi
