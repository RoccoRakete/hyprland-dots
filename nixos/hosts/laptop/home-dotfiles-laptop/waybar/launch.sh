#!/usr/bin/env sh

pkill waybar

sassc $HOME/.config/waybar/themes/style-adwaita.scss $HOME/.config/waybar/style.css

waybar
