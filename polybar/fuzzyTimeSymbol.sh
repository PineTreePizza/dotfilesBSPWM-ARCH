#!/bin/bash

hour=$(date '+%H')

value="None"

if [ $hour -ge 5 -a $hour -lt 12 ]; then
		value=""
elif [ $hour -ge 12 -a $hour -lt 17 ]; then
		value=""
elif [ $hour -ge 17 -a $hour -lt 21 ]; then
		value=""
else
		value=""
fi

echo $value
