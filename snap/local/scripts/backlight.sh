#!/bin/sh

night_start="$(snapctl get night.start)"
night_end="$(snapctl get night.end)"

currenttime=$(date +%H:%M)

if [[ "$currenttime" > "$night_start" ]] || [[ "$currenttime" < "$night_end" ]]
then
    # light off
    echo "backlight off"
    echo -n 1 > /sys/class/backlight/rpi_backlight/bl_power
else
    # light on
    echo "backlight on"
    echo -n 0 > /sys/class/backlight/rpi_backlight/bl_power
fi
