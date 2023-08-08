#! /bin/sh

# Terminate already running waybar instances!
killall -q waybar

# Launch bar
echo "---" | tee -a /tmp/waybar.log
waybar 2>&1 | tee -a /tmp/waybar.log & disown

echo "Bars launched..."