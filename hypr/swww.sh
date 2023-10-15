#!/usr/bin/env sh
killall -q swww
killall -q swww-daemon

exec swww-daemon >>
swww img ~/.dots/backgrounds/last/*

fi