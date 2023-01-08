#!/bin/sh
#network="$(nmcli -t -f active,ssid dev wifi | grep -oP '(?<=yes:).*' | cut -d\' -f2)"
#network="$(nmcli -t -f device,state connection show --order name --active 2>/dev/null | grep -v ':bridge')"
network="$(nmcli -t -f device connection show --order name --active 2>/dev/null | grep -v ':bridge')"
ping -c 1 gnu.org > /dev/null && status="" || status=""
#echo "$status $device"
echo $status $network
