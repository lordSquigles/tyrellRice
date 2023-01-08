#!/bin/bash

print_bytes() {
    if [ "$1" -eq 0 ] || [ "$1" -lt 1000 ]; then
        bytes="0 kB/s"
    elif [ "$1" -lt 1000000 ]; then
        bytes="$(echo "$1/1000" | bc -l | LANG=C xargs printf "%.f\n") kB/s"
    else
        bytes="$(echo "$1/1000000" | bc -l | LANG=C xargs printf "%.1f\n") MB/s"
    fi

    if [ $((${#bytes})) -eq 6 ]; then
        bytes="  $bytes"
    elif [ $((${#bytes})) -eq 7 ]; then
        bytes=" $bytes"
    fi

    echo "$bytes"
}

INTERVAL=5

prev_down="$(cat /sys/class/net/enp7s0/statistics/rx_bytes)"
prev_up="$(cat /sys/class/net/enp7s0/statistics/tx_bytes)"

sleep $INTERVAL

#network="$(nmcli -t -f device connection show --order name --active 2>/dev/null | grep -v ':bridge')"
#ping -c 1 google.com > /dev/null && status="" || status=""

down=$(((("$(cat /sys/class/net/enp7s0/statistics/rx_bytes)" - "$prev_down")) / INTERVAL))
up=$(((("$(cat /sys/class/net/enp7s0/statistics/tx_bytes)" - "$prev_up")) / INTERVAL))

echo "$(print_bytes $down) $(print_bytes $up)" # shows both download and upload speeds
#echo "$status enp7s0:$(print_bytes $(("$up" + "$down")))" # consolidates down and up into one number
