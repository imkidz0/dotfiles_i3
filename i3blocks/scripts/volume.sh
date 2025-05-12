#!/bin/bash

VOL=$(amixer get Master | grep -o '[0-9]*%' | head -n 1)
MUTED=$(amixer get Master | grep '\[off\]')

if [ -z "$VOL" ]; then
    echo "N/A"
elif [ -n "$MUTED" ]; then
    echo "Vol ($VOL)"
else
    echo "Vol $VOL"
fi
