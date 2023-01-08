#!/bin/zsh
scrot "$HOME/$(date +%m-%d-%y-%T).png" && sleep 0.1 && dunstify -i $(ls -At ~/*.png | head -n 1) "Screenshot Saved:" "~$(ls -At ~/*.png | head -n 1)"
