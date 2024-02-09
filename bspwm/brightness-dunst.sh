#!/bin/bash
# changeVolume

msgTag="BrightnessChange"

brightness="$(xbacklight -get)"

icon="display-brightness-low-symbolic"
if [ $brightness -gt 33 ]; then
    icon="display-brightness-medium-symbolic"
fi
if [ $brightness -gt 66 ]; then
    icon="display-brightness-high-symbolic"
fi
dunstify -a "changeBrightness" -u low -i "$icon" -h string:x-dunst-stack-tag:$msgTag \
        -h int:value:"$brightness" "Brightness: ${brightness}%"&
