#!/bin/bash

theme="$HOME/.config/rofi/clipboard.rasi"

cliphist list | rofi -dmenu -i -p "Clipboard:" \
                               -theme ${theme} \
                               | cliphist decode | wl-copy 
