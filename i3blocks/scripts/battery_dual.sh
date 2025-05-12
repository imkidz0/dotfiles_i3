#!/bin/bash

get_bat_info() {
    local bat=$1
    local charge=$(cat /sys/class/power_supply/$bat/capacity)
    local status=$(cat /sys/class/power_supply/$bat/status)

    if [[ "$status" == "Charging" ]]; then
        echo "<span color='green'>[$bat: $charge%]</span>"
    else
        echo "<span color='white'>[$bat: $charge%]</span>"
    fi
}

bat0=$(get_bat_info BAT0)
bat1=$(get_bat_info BAT1)

echo "$bat0$bat1"
