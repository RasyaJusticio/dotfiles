#!/bin/bash

self_pid=$$

for pid in $(pgrep -x waybar); do
  if [ "$pid" != "$self_pid" ]; then
    kill "$pid"
  fi
done

sleep 0.5

waybar &

