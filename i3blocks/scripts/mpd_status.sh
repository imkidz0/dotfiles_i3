#!/bin/bash
status=$(mpc status | grep -oP '^\[playing\]|\[paused\]')
current=$(mpc current)

if [[ "$status" == "[playing]" ]]; then
    echo "♬ $current"
elif [[ "$status" == "[paused]" ]]; then
    echo "■ $current"
else
    echo ""
fi
