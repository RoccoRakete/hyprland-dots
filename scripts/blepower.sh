#!/usr/bin/env sh

bluetooth_status=$(bluetoothctl show | grep "Powered: yes")

if [ -n "$bluetooth_status" ]; then
    echo "Bluetooth is enabled. Disabling..."
    bluetoothctl power off
else
    echo "Bluetooth is disabled. Enabling..."
    bluetoothctl power on
fi

