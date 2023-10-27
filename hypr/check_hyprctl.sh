#! /bin/sh

# Initialize a flag to keep track of whether the condition was previously true
condition_true=false

while true; do
    if hyprctl -j monitors | grep -q '"name": "HDMI-A-2"'; then
        if [ "$condition_true" = false ]; then
            condition_true=true
            killall -q ags
            echo "---" | tee -a /tmp/ags.log
            ags 2>&1 | tee -a /tmp/ags.log & disown
        fi
    else
        if [ "$condition_true" = true ]; then
            condition_true=false
            killall -q ags
            echo "---" | tee -a /tmp/ags.log
            ags 2>&1 | tee -a /tmp/ags.log & disown
        fi
    fi
    sleep 1
done
