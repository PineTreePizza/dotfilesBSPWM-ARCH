mkdir $HOME/.config/
mv alacritty $HOME/.config/
mv bspwm $HOME/.config/
mv sxhkd $HOME/.config/
mv polybar $HOME/.config/
mv rofi $HOME/.config/
mv picom.conf $HOME/.config/
mv dunst $HOME/.config/
mv flameshot $HOME/.config/
mv nvim $HOME/.config/
mv .gtkrc-2.0.mine $HOME/
mv gtk-2.0/ $HOME/.config
mv gtk-3.0 $HOME/.config
mv gtk-4.0/ $HOME/.config

mkdir /wallpapers/
sudo cp ./Wallpapers/* /wallpapers
sudo mv ./lightdm /etc

cd ./bspwm/
