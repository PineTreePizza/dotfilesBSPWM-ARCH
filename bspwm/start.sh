#! /bin/sh

setxkbmap -model pc104 -layout us,ru -variant ,, -option grp:alt_shift_toggle &

xset s 600

xss-lock -n --transfer-sleep-lock -- "betterlockscreen -l" &

#emacs --daemon --display=GTK -l .config/emacs/init.el &

sleep 1

picom &

fish -c "$HOME/.config/polybar/launch.sh" &

fish -c "$HOME/.config/bspwm/wallpaper-set.sh" &

dunst &

parcellite &

nm-applet &

sudo updatedb &
