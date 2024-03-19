#!/usr/bin/env sh

# Adwaita

sassc $HOME/.config/swaync/style-adwaita.scss $HOME/.config/swaync/style.css

swaync-client -R
swaync-client -rs
swaync-client -t
