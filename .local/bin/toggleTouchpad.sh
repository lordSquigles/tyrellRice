#!/usr/bin/zsh

#[ -z "touchpad" ] && touchpad=1 # if there is no "touchpad," variable, initialize it and set it to 1

if [ $(cat $HOME/.config/touchpad) = "1" ]; then
  xinput --set-prop $(xinput --list | grep TouchPad | sed -e 's/.*id=\(.*\)\[slave.*/\1/') "Device Enabled" 0
  echo '0' > $HOME/.config/touchpad
  echo 'Touchpad disabled'
else
  xinput --set-prop $(xinput --list | grep TouchPad | sed -e 's/.*id=\(.*\)\[slave.*/\1/') "Device Enabled" 1
  echo '1' > $HOME/.config/touchpad
  echo 'Touchpad enabled'
fi
