#!/bin/sh

#hyprctl monitors | grep HDMI-A-2 || exit
rm ~/.dots/hypr/monitors.conf
cp ~/.dots/hypr/presets/monitors_external.conf ~/.dots/hypr/monitors.conf
hyprctl dispatch moveworkspacetomonitor 1  1
hyprctl dispatch moveworkspacetomonitor 2  1
hyprctl dispatch moveworkspacetomonitor 3  1
hyprctl dispatch moveworkspacetomonitor 4  1
hyprctl dispatch moveworkspacetomonitor 5  1
hyprctl dispatch moveworkspacetomonitor 6  1
hyprctl dispatch moveworkspacetomonitor 7  1
hyprctl dispatch moveworkspacetomonitor 8  1
hyprctl dispatch moveworkspacetomonitor 9  1
hyprctl dispatch moveworkspacetomonitor 10 1
hyprctl dispatch moveworkspacetomonitor 11 0
hyprctl dispatch moveworkspacetomonitor 12 0
hyprctl dispatch moveworkspacetomonitor 13 0
hyprctl dispatch moveworkspacetomonitor 14 0
hyprctl dispatch moveworkspacetomonitor 15 0
hyprctl dispatch moveworkspacetomonitor 16 0
hyprctl dispatch moveworkspacetomonitor 17 0
hyprctl dispatch moveworkspacetomonitor 18 0
hyprctl dispatch moveworkspacetomonitor 19 0
hyprctl dispatch moveworkspacetomonitor 20 0
hyprctl dispatch workspace 1