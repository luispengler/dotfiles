#! /bin/bash

#Importing the colors
. "${HOME}/.cache/wal/colors.sh"

dmenu_run -i -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" -p Search:
