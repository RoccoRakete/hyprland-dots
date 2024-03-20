#!/usr/bin/env sh

# Catppuccin-Mocha

is_swww_daemon_running() {
    if pgrep -x "swww-daemon" > /dev/null
    then
        return 0
    else
	exec swww-daemon &
        return 1
    fi
}

# wait for the swww-daemon
while ! is_swww_daemon_running; do
    echo "wait for swww-daemon"
    sleep 1
done

swww img ~/.config/backgrounds/mocha-mountains.png 

pkill waybar

sassc $HOME/.config/waybar/style-catppuccin-mocha.scss $HOME/.config/waybar/style.css

waybar
