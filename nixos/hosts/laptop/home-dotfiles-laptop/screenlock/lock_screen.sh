#!/usr/bin/env zsh

if [ ! -d "/tmp/hypr/latest_screenshot" ]; then
    mkdir -p /tmp/hypr/latest_screenshot
else
    echo "Directory /tmp/hypr/latest_screenshot already exists... continue"
fi

playerctl pause

grimblast save output /tmp/hypr/latest_screenshot/latest.png &&

convert /tmp/hypr/latest_screenshot/latest.png -blur 0x3 -brightness-contrast -5x0 /tmp/hypr/latest_screenshot/latest_blur.png &&

swaylock -f &&
