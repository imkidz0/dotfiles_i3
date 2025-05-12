#!/bin/bash

SSID=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d: -f2)
SIGNAL=$(nmcli -t -f active,signal dev wifi | grep '^yes' | cut -d: -f2)

if [ -z "$SSID" ]; then
    echo "<span foreground='red'>Disconnected</span>"
else
    echo "<span foreground='green'>$SSID ($SIGNAL%)</span>"
fi
