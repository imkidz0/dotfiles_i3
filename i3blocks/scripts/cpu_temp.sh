#!/bin/bash

TEMP=$(sensors | grep -m 1 'Package id 0:' | awk '{print $4}' | tr -d '+°C')

if [ -z "$TEMP" ]; then
    echo "CPU: N/A"
else
    echo "CPU: ${TEMP}°C"
fi
