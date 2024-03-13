#!/usr/bin/env sh

brightnessctl s 1
pactl set-sink-volume @DEFAULT_SINK@ 30%
