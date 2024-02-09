#!/bin/bash

hour=$(date '+%H')
lock_file="$HOME/.config/polybar/fuzzy-datafile"

if [ $hour -ge 6 -a $hour -lt 9 ]; then
	value="Harvest Dawn"
elif [ $hour -ge 9 -a $hour -lt 12 ]; then
	value="Waxing Sun"
elif [ $hour -ge 12 -a $hour -lt 15 ]; then
	value="High Sun"
elif [ $hour -ge 15 -a $hour -lt 18 ]; then
	value="Waning Sun"
elif [ $hour -ge 18 -a $hour -lt 20 ]; then
	value="Hindsun"
elif [ $hour -ge 20 -a $hour -lt 22 ]; then
	value="Jeweled Dusk"
elif [ $hour -ge 22 -a $hour -lt 24 ]; then
	value="Waxing Moon"
elif [ $hour -ge 0 -a $hour -lt 2 ]; then
	value="Moon Zenith"
else
	value="The Shallows"
fi

echo $value

if [ ! -e "$lock_file" ] || [ "$(cat "$lock_file")" != "$value" ]; then
	echo $value >"$lock_file"
	~/.config/polybar/toggleFuzzyTime.sh
fi
