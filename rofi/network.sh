#!/bin/bash

theme="$HOME/.config/rofi/network.rasi"

networkmanager_dmenu -i -p "Network:" \
		  -theme ${theme}
