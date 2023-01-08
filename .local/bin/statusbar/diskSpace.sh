#!/bin/sh

df -h /dev/sda7 | awk '/^\/dev\/sda7/ {print $3"/"$2}'
