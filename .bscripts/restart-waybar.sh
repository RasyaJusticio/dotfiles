#!/bin/bash
pkill -SIGUSR2 waybar
sleep 0.2
waybar &

