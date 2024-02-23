#!/usr/bin/env sh

# Path to config file
CONFIG_FILE=~/.config/screenlock/lock_config.conf

# read config file
source "$CONFIG_FILE"

# Initialize error count
errors=0

# check if config file input of "LID_STATUS" is valid
if [ ! -f "$LID_STATUS" ]; then
  echo "LID_STATUS file does not exist or is not readable."
  ((errors++))
fi

# check if config file input of "EXTERNAL_MONITOR_STATUS" is valid
if [ ! -f "$EXTERNAL_MONITOR_STATUS" ]; then
  echo "EXTERNAL_MONITOR_STATUS file does not exist or is not readable."
  ((errors++))
fi

# check if config file input of "LID_CLOSED_CONDITION" is valid
if [ "$LID_CLOSED_CONDITION" != "closed" ] && [ "$LID_CLOSED_CONDITION" != "open" ]; then
  echo "LID_CLOSED_CONDITION must be either 'closed' or 'open'."
  ((errors++))
fi

# check if config file input of "EXTERNAL_MONITOR_CONDITION" is valid
if [ "$EXTERNAL_MONITOR_CONDITION" != "disconnected" ] && [ "$EXTERNAL_MONITOR_CONDITION" != "connected" ]; then
  echo "EXTERNAL_MONITOR_CONDITION must be either 'disconnected' or 'connected'."
  ((errors++))
fi

# check if config file input of "LOCK_COMMAND" is valid
#if ! command -v "$LOCK_COMMAND" &> /dev/null; then
#    echo "Screenlocker '$LOCK_COMMAND' is not installed or not in PATH."
#    ((errors++))
#fi

# Output status
if [ $errors != 0 ]; then
  echo "There are $errors errors in the configuration. Please correct them before running the script."
  exit 1
fi

while true; do
  # check conditions
  if [[ $(cat "$LID_STATUS") == *"$LID_CLOSED_CONDITION"* && $(cat "$EXTERNAL_MONITOR_STATUS") == *"$EXTERNAL_MONITOR_CONDITION"* ]]; then
    # execute screenlocker
    $LOCK_COMMAND $LOCK_COMMAND_PARAMS
  fi
  sleep 1
done
