#!/bin/bash

theme="$HOME/.config/rofi/pick-background.rasi"

wallpaper_folder=$HOME/.config/backgrounds/
wallpaper_location="$(ls "$wallpaper_folder" | sort | rofi -dmenu -i -p "Select Background"  \
							   -theme ${theme} 		     \
							   -hover-select -me-select-entry '' \
	 						   -me-accept-entry MousePrimary)"

if [[ -d $wallpaper_folder/$wallpaper_location ]]; then
    wallpaper_temp="$wallpaper_location"
elif [[ -f $wallpaper_folder/$wallpaper_location ]]; then
	swww img "$wallpaper_folder"/"$wallpaper_temp"/"$wallpaper_location" --transition-fps 120 --transition-type center --transition-duration 1 &&
	#cp "$wallpaper_folder"/"$wallpaper_temp"/"$wallpaper_location" "$wallpaper_folder"/"$wallpaper_temp"/"$wallpaper_location" "$wallpaper_folder"/last" &&
	#wal -i "$wallpaper_folder"/"$wallpaper_temp"/"$wallpaper_location"
	sed -i '22,50d' ~/.dots/ags/scss/wal-colors.scss
	sed -i '22,50d' ~/.dots/ags/scss/wal-colors.scss
	cat ~/.cache/wal/colors.scss >> ~/.dots/ags/scss/wal-colors.scss

else
    exit 1
fi