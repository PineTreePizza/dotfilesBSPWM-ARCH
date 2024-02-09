#!/bin/bash

cd ~
current_theme=$(gsettings get org.gnome.desktop.interface gtk-theme)
current_icon_theme=$(gsettings get org.gnome.desktop.interface icon-theme)
current_cursor_theme=$(gsettings get org.gnome.desktop.interface cursor-theme)
file_path="/etc/lightdm/lightdm-gtk-greeter.conf"
default_icon_path="/usr/share/icons/default/index.theme"
gtk3_path="$HOME/.config/gtk-3.0/settings.ini"
gtk2_path="$HOME/.gtkrc-2.0.mine"
gtk4_path="$HOME/.config/gtk-4.0/settings.ini"
pkill feh

if [ "$current_theme" == "'Skeuos-Blue-Dark'" ]; then
	new_theme="Skeuos-Blue-Light"
	sudo sed -i "/^\[Settings\]/,/^\[/ s/^gtk-application-prefer-dark-theme = .*/gtk-application-prefer-dark-theme = 0/" "$gtk4_path"
	sed -i '/\[urgency_low\]/,/\[/{s/background = "[^"]*"/background = "#FAFAFA"/;s/foreground = "[^"]*"/foreground = "#2A2A2A"/;s/highlight = "[^"]*"/highlight = "#367BF0"/}' $HOME/.config/dunst/dunstrc
	sed -i '/\[urgency_normal\]/,/\[/{s/background = "[^"]*"/background = "#FAFAFA"/;s/foreground = "[^"]*"/foreground = "#2A2A2A"/;s/highlight = "[^"]*"/highlight = "#367BF0"/}' $HOME/.config/dunst/dunstrc
	sed -i '/\[urgency_critical\]/,/\[/{s/background = "[^"]*"/background = "#FAFAFA"/;s/foreground = "[^"]*"/foreground = "#2A2A2A"/;s/highlight = "[^"]*"/highlight = "#367BF0"/}' $HOME/.config/dunst/dunstrc
	sed -i 's/icon_theme = .*/icon_theme = Flat-Remix-Blue-Light/' $HOME/.config/dunst/dunstrc
	background_color="#FAFAFA"
	background_alt_color="#EAEAEA"
	foreground_color="#2A2A2A"
	accent_color="#367BF0"
	disabled_color="#888A8D"
	~/.config/bspwm/matter/matter.py -i arch folder arch arch cog -bg FAFAFA -fg 2A2A2A -hl 367BF0 -ic 367BF0 -ff /usr/share/fonts/TTF/IosevkaNerdFontMono-Regular.ttf -fs 32 -fn Iosevka Nerd Font Mono Regular
	echo "[colors.primary]
background = '#FAFAFA'
foreground = '#2A2A2A'
" >".config/alacritty/colors.toml"
	bspc config border_width 2
	bspc config normal_border_color "#FAFAFA"
	bspc config active_border_color "#367BF0"
	bspc config focused_border_color "#367BF0"
	fish -c "set -Ux BACKGROUND_COLOR FAFAFA"
	fish -c "set -Ux THEME_COL LIGHT"
	fish -c "set -Ux FOREGROUND_COLOR 2A2A2A"
	fish -c "set -Ux BACKGROUND_ALT_COLOR EAEAEA"
	fish -c "set -Ux DISABLED_COLOR 888A8D"
	fish -c "set -Ux ACCENT_COLOR 367BF0"
	sudo sed -i "/^\[greeter\]/,/^\[/ s/^background = .*/background = \/wallpapers\/WhiteWallpaper.jpg/" "$file_path"

else
	new_theme="Skeuos-Blue-Dark"
	sudo sed -i "/^\[Settings\]/,/^\[/ s/^gtk-application-prefer-dark-theme = .*/gtk-application-prefer-dark-theme = 1/" "$gtk4_path"
	sed -i '/\[urgency_low\]/,/\[/{s/background = "[^"]*"/background = "#272A34"/;s/foreground = "[^"]*"/foreground = "#FFFFFF"/;s/highlight = "[^"]*"/highlight = "#3267C1"/}' $HOME/.config/dunst/dunstrc
	sed -i '/\[urgency_normal\]/,/\[/{s/background = "[^"]*"/background = "#272A34"/;s/foreground = "[^"]*"/foreground = "#FFFFFF"/;s/highlight = "[^"]*"/highlight = "#3267C1"/}' $HOME/.config/dunst/dunstrc
	sed -i '/\[urgency_critical\]/,/\[/{s/background = "[^"]*"/background = "#272A34"/;s/foreground = "[^"]*"/foreground = "#FFFFFF"/;s/highlight = "[^"]*"/highlight = "#3267C1"/}' $HOME/.config/dunst/dunstrc
	sed -i 's/icon_theme = .*/icon_theme = Flat-Remix-Blue-Dark/' $HOME/.config/dunst/dunstrc
	background_color="#272A34"
	background_alt_color="#1D1F27"
	foreground_color="#FFFFFF"
	accent_color="#3267C1"
	disabled_color="#AEB0B6"
	~/.config/bspwm/matter/matter.py -i arch folder arch arch cog -bg 272A34 -fg FFFFFF -hl 3267C1 -ic 3267C1 -ff /usr/share/fonts/TTF/IosevkaNerdFontMono-Regular.ttf -fs 32 -fn Iosevka Nerd Font Mono Regular
	echo "[colors.primary]
background = '#272A34'
foreground = '#FFFFFF'
" >".config/alacritty/colors.toml"
	bspc config border_width 2
	bspc config normal_border_color "#272A34"
	bspc config active_border_color "#3267C1"
	bspc config focused_border_color "#3267C1"
	fish -c "set -Ux BACKGROUND_COLOR 272A34"
	fish -c "set -Ux THEME_COL DARK"
	fish -c "set -Ux FOREGROUND_COLOR FFFFFF"
	fish -c "set -Ux BACKGROUND_ALT_COLOR 1D1F27"
	fish -c "set -Ux DISABLED_COLOR AEB0B6"
	fish -c "set -Ux ACCENT_COLOR 3267C1"
	sudo sed -i "/^\[greeter\]/,/^\[/ s/^background = .*/background = \/wallpapers\/GreyWallpaper.jpg/" "$file_path"
fi

if [ "$current_icon_theme" == "'Flat-Remix-Blue-Dark'" ]; then
	new_icon_theme="Flat-Remix-Blue-Light"
else
	new_icon_theme="Flat-Remix-Blue-Dark"
fi

if [ "$current_cursor_theme" == "'GoogleDot-White'" ]; then
	new_cursor_theme="GoogleDot-Black"
else
	new_cursor_theme="GoogleDot-White"
fi

# LightDM Configuration

sudo sed -i "/^\[greeter\]/,/^\[/ s/^theme-name = .*/theme-name = $new_theme/" "$file_path"
sudo sed -i "/^\[greeter\]/,/^\[/ s/^icon-theme-name = .*/icon-theme-name = $new_icon_theme/" "$file_path"

sudo sed -i "s/Inherits=.*/Inherits=$new_cursor_theme/g" "$default_icon_path"

sudo sed -i "s/^gtk-theme-name=\"[^\"]*\"/gtk-theme-name=\"$new_theme\"/" "$gtk2_path"
sudo sed -i "/^\[Settings\]/,/^\[/ s/^gtk-theme-name=.*/gtk-theme-name=$new_theme/" "$gtk3_path"
sudo sed -i "s/^gtk-icon-theme-name=\"[^\"]*\"/gtk-icon-theme-name=\"$new_icon_theme\"/" "$gtk2_path"
sudo sed -i "/^\[Settings\]/,/^\[/ s/^gtk-icon-theme-name=.*/gtk-icon-theme-name=$new_icon_theme/" "$gtk3_path"
sudo sed -i "s/^gtk-cursor-theme-name=\"[^\"]*\"/gtk-cursor-theme-name=\"$new_cursor_theme\"/" "$gtk2_path"
sudo sed -i "/^\[Settings\]/,/^\[/ s/^gtk-cursor-theme-name=.*/gtk-cursor-theme-name=$new_cursor_theme/" "$gtk3_path"

gsettings set org.gnome.desktop.interface gtk-theme "$new_theme"

# Set the icon theme
gsettings set org.gnome.desktop.interface icon-theme "$new_icon_theme"

# Set the cursor theme
gsettings set org.gnome.desktop.interface cursor-theme "$new_cursor_theme"

bspc wm -r
sleep 1
pkill -USR1 -x sxhkd &
