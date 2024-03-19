#!/usr/bin/env sh

# Catppuccin-Mocha

sassc $HOME/.config/swaync/style-catppuccin-mocha.scss $HOME/.config/swaync/style.css

swaync-client -R
swaync-client -rs
swaync-client -t
