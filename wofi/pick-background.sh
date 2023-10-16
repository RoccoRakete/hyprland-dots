#!/usr/bin/env sh

wallpaper_folder=$HOME/.config/backgrounds/

wallpaper_location="$(ls "$wallpaper_folder" | wofi  -i -p "Select Background")"

if [[ -d $wallpaper_folder/$wallpaper_location ]]; then
    wallpaper_temp="$wallpaper_location"
elif [[ -f $wallpaper_folder/$wallpaper_location ]]; then
	swww img "$wallpaper_folder"/"$wallpaper_temp"/"$wallpaper_location" --transition-step 4 -f CatmullRom --transition-fps 120 &&
	rm ~/.dots/backgrounds/last/*
	cp $wallpaper_folder"/"$wallpaper_temp"/"$wallpaper_location ~/.dots/backgrounds/last
else
    exit 1
fi



