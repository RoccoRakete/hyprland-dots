#!/bin/sh

rm ~/.dots/hypr/monitors.conf
cp ~/.dots/hypr/presets/monitors_internal.conf ~/.dots/hypr/monitors.conf
hyprctl dispatch moveworkspacetomonitor 1  0
hyprctl dispatch moveworkspacetomonitor 2  0
hyprctl dispatch moveworkspacetomonitor 3  0
hyprctl dispatch moveworkspacetomonitor 4  0
hyprctl dispatch moveworkspacetomonitor 5  0
hyprctl dispatch moveworkspacetomonitor 6  0
hyprctl dispatch moveworkspacetomonitor 7  0
hyprctl dispatch moveworkspacetomonitor 8  0
hyprctl dispatch moveworkspacetomonitor 9  0
hyprctl dispatch moveworkspacetomonitor 10 0
hyprctl dispatch workspace 1
