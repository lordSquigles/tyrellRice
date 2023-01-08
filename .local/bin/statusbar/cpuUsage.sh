#!/bin/sh
cpu="$[100-$(vmstat 1 2|tail -1|awk '{print $15}')]"%""
[ $((${#cpu})) -eq 2 ] && echo " $cpu" || echo "$cpu" # add whitespace to keep the whole bar from shifting when less characters are required
