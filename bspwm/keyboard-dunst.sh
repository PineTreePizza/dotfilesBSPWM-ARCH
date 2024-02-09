#!/bin/bash
# changeVolume

msgTag="KeyboardChange"

keyboard=$(xset -q | grep LED | awk '{ print $10 }')

caps=$(xset -q|grep 00:| awk '{ print $4}')

if [ $keyboard == 00001001 ]; then
		keyboard="EN"
fi
if [ $keyboard == 00000001 ]; then
		keyboard="RU"
fi

if [ $caps == 'off' ]; then
		icon="capslock-disabled-symbolic"
else
		icon="capslock-enabled-symbolic"
fi

dunstify -a "keyboardChange" -u low -i "$icon" -h string:x-dunst-stack-tag:$msgTag \
        "Keyboard" $caps &
