#!/bin/sh

newWallpaper="$(readlink -f $1)"
ln -sf "${newWallpaper}" "${XDG_DATA_HOME:-$HOME/.local/share/}/bg"
wallpaper="${XDG_DATA_HOME:-$HOME/.local/share/}/bg"

wal \
	-i "$(readlink -f $wallpaper)" \
	-n \
	-o "${XDG_CONFIG_HOME:-$HOME/.config}/wal/postrun" >/dev/null \
	2>&1
xwallpaper --stretch "$(readlink -f $wallpaper)"
dwmc reloadcolors
printf $(cat ~/.cache/wal/sequences)
