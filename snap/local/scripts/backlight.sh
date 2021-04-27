#!/bin/sh

nightstart="$(snapctl get nightstart)"
nightend="$(snapctl get nightend)"

currenttime=$(date +%H:%M)

if [ "$currenttime" > "$nightstart" ] && [ "$currenttime" < "$nightend" ]
then
    # light off
    echo "backlight off"
    echo -n 1 > /sys/class/backlight/rpi_backlight/bl_power
else
    # light on
    echo "backlight on"
    echo -n 0 > /sys/class/backlight/rpi_backlight/bl_power
fi
