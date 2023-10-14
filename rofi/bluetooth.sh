#!/bin/bash

theme="$HOME/.config/rofi/bluetooth.rasi"

rofi-bluetooth -dmenu -i -p "Bluetooth:" \
		  -theme ${theme}
