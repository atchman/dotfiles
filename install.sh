#!/usr/bin/env bash
# install script for my dotfiles

PATHDOT = $(pwd)

# home directory
ln -sf $PATHDOT/.bash_aliases $HOME/.bash_aliases
ln -sf $PATHDOT/.bash_logout $HOME/.bash_profile
ln -sf $PATHDOT/.bash_profile $HOME/.bash_profile


# config directory
[ ! -d $HOME/.config ] && mkdir $HOME/.config

[ -d $HOME/.config/alacritty ] && rm -rf $HOME/.config/alacritty
ln -sf $PATHDOT/.config/alacritty $HOME/.config/alacritty

[ -d $HOME/.config/dunst ] && rm -rf $HOME/.config/dunst
ln -sf $PATHDOT/.config/dunst $HOME/.config/dunst

#[ ! -d $HOME/.config/eww ] && mkdir $HOME/.config/eww
ln -sf $PATHDOT/.config/eww ] && mkdir $HOME/.config/eww

#[ ! -d $HOME/.config/foot ] && mkdir $HOME/.config/foot
ln -sf $PATHDOT/.config/foot $HOME/.config/foot

#[ ! -d $HOME/.config/fuzzel ] && mkdir $HOME/.config/fuzzel
ln -sf $PATHDOT/.config/fuzzel $HOME/.config/fuzzel

#[ ! -d $HOME/.config/hypr ] && mkdir $HOME/.config/hypr
ln -sf $PATHDOT/.config/hypr $HOME/.config/hypr

#[ ! -d $HOME/.config/i3 ] && mkdir $HOME/.config/i3
n -sf $PATHDOT/.config/i3 $HOME/.config/i3

#[ ! -d $HOME/.config/i3status ] && mkdir $HOME/.config/i3status
ln -sf $PATHDOT/.config/i3status $HOME/.config/i3status

#[ ! -d $HOME/.config/mako ] && mkdir $HOME/.config/mako
ln -sf $PATHDOT/.config/mako $HOME/.config/mako

#[ ! -d $HOME/.config/rofi ] && mkdir $HOME/.config/rofi
ln -sf $PATHDOT/.config/rofi $HOME/.config/rofi

#[ ! -d $HOME/.config/sway ] && mkdir $HOME/.config/sway
ln -sf $PATHDOT/.config/sway $HOME/.config/sway

#[ ! -d $HOME/.config/swaylock ] && mkdir $HOME/.config/swaylock
ln -sf $PATHDOT/.config/swaylock $HOME/.config/swaylock

#[ ! -d $HOME/.config/waybar ] && mkdir $HOME/.config/waybar
ln -sf $PATHDOT/.config/waybar $HOME/.config/waybar


