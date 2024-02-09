#!/bin/bash

hideIt.sh -w --name polybar-bgfuzzytimeicon_eDP --toggle &

usleep 300000

hideIt.sh -w --name polybar-bgfuzzytime_eDP --toggle &

sleep 20

hideIt.sh -w --name polybar-bgfuzzytimeicon_eDP --toggle &

usleep 300000

hideIt.sh -w --name polybar-bgfuzzytime_eDP --toggle
