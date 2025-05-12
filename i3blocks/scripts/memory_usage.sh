#!/bin/sh

set -- $(awk '/MemTotal/ {t=$2} /MemAvailable/ {a=$2} END {print t, a}' /proc/meminfo)
echo "$(( ($1 - $2) / 1024 ))MB ($(( 100 * ($1 - $2) / $1 ))%)"

