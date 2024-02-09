#! /bin/sh

killall -q polybar
killall -q bash

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done


polybar systray &
polybar bgfuzzytimeicon &
usleep 100000
polybar bgfuzzytime &
polybar fg &
usleep 100000
polybar bgxwindowbar &
usleep 500000
polybar bg &

polybar timebottom &
usleep 500000
polybar bottom &

hideIt.sh -w --name polybar-systray_eDP --region 0x18+240+45 --interval 0.5 --peek 40 --steps 40 --direction left&
hideIt.sh -w --name polybar-bottom_eDP --hover --peek 10 --steps 40 --direction bottom&
hideIt.sh -w --name polybar-timebottom_eDP --region 460x1000+1050+250 --peek 30 --steps 40 --direction bottom&
hideIt.sh -w --name polybar-bg_eDP --signal --peek 25 --steps 40 --direction top&
hideIt.sh -w --name polybar-bgxwindowbar_eDP --signal --peek 0 --steps 40 --direction top&
hideIt.sh -w --name polybar-bg_eDP --toggle &
hideIt.sh -w --name polybar-bgbgxwindowbar_eDP --toggle &
hideIt.sh --name polybar-bgfuzzytimeicon_eDP --signal --peek 0 --steps 40 --direction top &
hideIt.sh --name polybar-bgfuzzytime_eDP --signal --peek 0 --steps 40 --direction top &
