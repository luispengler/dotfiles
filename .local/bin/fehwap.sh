#! /bin/bash
## Here I run the polybar with the theme set
	bash ~/.config/polybar/colorblocks/scripts/pywal.sh ~/pix/wallpapers/using && 
	bash ~/.config/polybar/launch.sh --colorblocks &&
## Here I take an wallpaper and apply its colors to the system
	feh --bg-fill "$(< "${HOME}/.cache/wal/wal")" && 
## Here I take the colors from the system and generate a palette for telegram

	bash ~/.telegram-palette-gen/telegram-palette-gen --wal && 
	cd ~/.telegram-palette-gen/ && 
	git pull && 
	cd
## For now, it's the end.
