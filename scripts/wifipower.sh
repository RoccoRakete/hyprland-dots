#!/usr/bin/env sh

wifi_status=$(nmcli radio wifi)

if [ "$wifi_status" = "enabled" ]; then
    echo "Wi-Fi is enabled. Disabling..."
    nmcli radio wifi off
else
    echo "Wi-Fi is disabled. Enabling..."
    nmcli radio wifi on
fi

