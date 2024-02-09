#!/bin/bash

current_theme=$(gsettings get org.gnome.desktop.interface gtk-theme)
if [ "$current_theme" == "'Skeuos-Blue-Dark'" ]; then
		fish -c "feh --bg-scale ~/Wallpapers/GreyWallpaper.jpg"&
		fish -c "betterlockscreen -u ~/Wallpapers/GreyWallpaper.jpg" &
else
		fish -c "feh --bg-scale ~/Wallpapers/WhiteWallpaper.jpg"&
		fish -c "betterlockscreen -u ~/Wallpapers/WhiteWallpaper.jpg" &
fi
