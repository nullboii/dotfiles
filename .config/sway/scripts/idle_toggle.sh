#!/bin/bash


if pgrep "swayidle"; then
    makoctl dismiss && notify-send "Idle Disabled"
    pkill swayidle
else
    makoctl dismiss && notify-send "Idle Enabled"
    /home/nullboi/.config/sway/scripts/sleep.sh
fi
