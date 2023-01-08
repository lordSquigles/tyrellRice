#!/bin/sh

cat <<EOF | xmenu | sh &
Applications
	IMG:./web.png	Web Browser	firefox-bin
	IMG:./gimp.png	Image editor	gimp
Terminal (urxvt)				urxvt
Terminal (st)					st

Shutdown					doas shutdown -h now
Reboot						doas reboot
EOF
