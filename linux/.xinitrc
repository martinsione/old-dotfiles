#!/bin/sh

remap &					      # Key remappings
xcompmgr &				    # Compositor
lxsession &				    # Polkit
dunst &					      # Notifications
unclutter &           # Remove mouse when idle
nitrogen --restore &	# Wallpaper
dwmblocks &				    # status bar

while true; do
	dwm >/dev/null 2>&1
done

dwm
