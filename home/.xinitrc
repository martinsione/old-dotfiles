#!/bin/sh

remap &					# Key remappings
picom &					# Compositor
nitrogen --restore &	# Wallpaper
dwmblocks &				# status bar

# Loop
while true; do
	dwm >/dev/null 2>&1
done

exec dwm
