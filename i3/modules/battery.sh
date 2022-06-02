#!/bin/bash

BAT=$(acpi -b | grep -o -P '(?<=, ).*(?=%)')

echo "[ $BAT%]"

