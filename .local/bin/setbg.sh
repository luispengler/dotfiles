#!/bin/sh

wall=$(find $HOME/wallpapers/using -type f | shuf -n 1)
xwallpaper --zoom $wall
wal -i $wall >/dev/null
