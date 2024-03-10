#!/usr/bin/env sh

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

swww img ~/.config/backgrounds/minimal_landscape.jpg 

pkill waybar

sassc $HOME/.config/waybar/themes/style-adwaita.scss $HOME/.config/waybar/style.css

waybar
