#!/bin/bash
DEVICE_NAME="elan1200:00-04f3:30ef-touchpad"
STATE_FILE="$HOME/.touchpad_state"

if [ ! -f "$STATE_FILE" ]; then
    echo "enabled" > "$STATE_FILE"
fi

STATE=$(cat "$STATE_FILE")

if [ "$STATE" = "enabled" ]; then
    hyprctl keyword "device[$DEVICE_NAME]:enabled" false
    echo "disabled" > "$STATE_FILE"
else
    hyprctl keyword "device[$DEVICE_NAME]:enabled" true
    echo "enabled" > "$STATE_FILE"
fi
