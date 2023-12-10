#!/usr/bin/env zsh

pkill  ags

# Launch ags
echo "---" | tee -a /tmp/ags.log
ags 2>&1 | tee -a /tmp/ags.log & disown

echo "shell launched..."