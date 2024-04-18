#!/bin/bash
# adjust volume 5% intervals and send notification

if [ $1 == 'up' ]; then
    pactl set-sink-volume @DEFAULT_SINK@ +5%
    makoctl dismiss && notify-send "$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{ print $5 }')"
elif [ $1 == 'down' ]; then
    pactl set-sink-volume @DEFAULT_SINK@ -5%
    makoctl dismiss && notify-send "$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{ print $5 }')"
fi
