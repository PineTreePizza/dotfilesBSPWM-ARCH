#!/bin/bash
# changeVolume

msgTag="VolumeChange"

volume="$(pulsemixer --get-volume | awk '{print $1}' | sed 's/[^0-9]*//g')"

mute="$(pulsemixer --get-mute)"

if [[ "$mute" != "1" ]]; then
    icon="audio-volume-low"
    if [ $volume -gt 33 ]; then
        icon="audio-volume-medium"
    fi
    if [ $volume -gt 66 ]; then
        icon="audio-volume-high"
    fi
else
		icon="audio-volume-muted"
fi

if [ $volume -lt 100 ]; then
		canberra-gtk-play -i audio-volume-change -d "changeVolume"&
fi

dunstify -a "changeVolume" -u low -i "$icon" -h string:x-dunst-stack-tag:$msgTag \
				 -h int:value:"$volume" "Volume: ${volume}%"
