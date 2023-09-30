#! /bin/sh

# Terminate already running waybar instances!
killall -q gBar

# Launch bar
echo "---" | tee -a /tmp/gBar.log
gBar bar 0 2>&1 | tee -a /tmp/gBar.log & disown

echo "Bars launched..."