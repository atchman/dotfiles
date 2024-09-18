#!/usr/bin/env bash
# install script for my dotfiles

PATHDOT = $(pwd)

############################################################
# home directory
ln -sfn $PATHDOT/home/.bash_aliases $HOME/.bash_aliases
ln -sfn $PATHDOT/home/.bash_logout $HOME/.bash_profile
ln -sfn $PATHDOT/home/.bash_profile $HOME/.bash_profile


###########################################################
# firefox
[ ! -d $HOME/.var/app/org.mozilla.firefox/.mozilla/firefox/ ]  
ln -sfn ~/dotfiles/firefox/chrome/userChrome.css ~/.var/app/org.mozilla.firefox/.mozilla/firefox/


###########################################################
# config directory
[ ! -d $HOME/.config ] && mkdir $HOME/.config

[ -d $HOME/.config/alacritty ] && mkdir $HOME/.config/alacritty
ln -sfn $PATHDOT/config/alacritty/alacritty.toml $HOME/.config/alacritty

[ -d $HOME/.config/bottom ] && mkdir $HOME/.config/bottom
ln -sfn $PATHDOT/config/bottom/bottom.toml $HOME/.config/bottom

[ -d $HOME/.config/dunst ] && mkdir $HOME/.config/dunst
ln -sfn $PATHDOT/config/dunst/dunstrc $HOME/.config/dunst/

[ ! -d $HOME/.config/eww ] && mkdir $HOME/.config/eww
ln -sf $PATHDOT/config/eww/eww.yuck ] && mkdir $HOME/.config/eww
ln -sf $PATHDOT/config/eww/eww.scss ] && mkdir $HOME/.config/eww
ln -sf $PATHDOT/config/eww/variables.yuck ] && mkdir $HOME/.config/eww
ln -sf $PATHDOT/config/eww/windows.yuck ] && mkdir $HOME/.config/eww

[ ! -d $HOME/.config/foot ] && mkdir $HOME/.config/foot
ln -sf $PATHDOT/config/foot/foot.ini $HOME/.config/foot

[ ! -d $HOME/.config/fuzzel ] && mkdir $HOME/.config/fuzzel
ln -sf $PATHDOT/config/fuzzel/fuzzel.ini $HOME/.config/fuzzel

[ ! -d $HOME/.config/git ] && mkdir $HOME/.config/git
ln -sf $PATHDOT/config/git/ignore $HOME/.config/git/ignore
ln -sf $PATHDOT/config/git/config $HOME/.config/git/config

[ ! -d $HOME/.config/gitui ] && mkdir $HOME/.config/gitui
ln -sf $PATHDOT/config/gitui/theme.ron $HOME/.config/gitui

[ ! -d $HOME/.config/hypr ] && mkdir $HOME/.config/hypr
ln -sf $PATHDOT/config/hypr/hyprland.conf $HOME/.config/hyprland.conf
ln -sf $PATHDOT/config/hypr/keybind.conf $HOME/.config/hyprland.conf
ln -sf $PATHDOT/config/hypr/envs.conf $HOME/.config/hyprland.conf
ln -sf $PATHDOT/config/hypr/execs.conf $HOME/.config/hyprland.conf
ln -sf $PATHDOT/config/hypr/plugin.conf $HOME/.config/hyprland.conf
ln -sf $PATHDOT/config/hypr/windowrules.conf $HOME/.config/hyprland.conf

[ ! -d $HOME/.config/hypr ] && mkdir $HOME/.config/hypr
ln -sf $PATHDOT/config/hypr/hyprpaper.conf $HOME/.config/hypr/hyprpaper.conf

[ ! -d $HOME/.config/hypr ] && mkdir $HOME/.config/hypr
ln -sf $PATHDOT/config/hypr/hypridle $HOME/.config/hypr/hypridle

[ ! -d $HOME/.config/hypr ] && mkdir $HOME/.config/hypr
ln -sf $PATHDOT/config/hypr/hyprlock $HOME/.config/hypr/hyprlock

[ ! -d $HOME/.config/i3 ] && mkdir $HOME/.config/i3
ln -sf $PATHDOT/config/i3/config $HOME/.config/i3

[ ! -d $HOME/.config/i3status ] && mkdir $HOME/.config/i3status
ln -sf $PATHDOT/config/i3status/config $HOME/.config/i3status

#[ ! -d $HOME/.config/mako ] && mkdir $HOME/.config/mako
ln -sf $PATHDOT/config/mako $HOME/.config/mako

[ ! -d $HOME/.config/MangoHud ] && mkdir $HOME/.config/MangoHud
ln -sf $PATHDOT/config/MangoHud/MangoHud.conf $HOME/.config/MangoHud/MangoHud.conf
ln -sf $PATHDOT/config/MangoHud/dauntless-win64-shipping.conf $HOME/.config/MangoHud/dauntless-win64-shipping.conf
ln -sf $PATHDOT/config/MangoHud/heroic.conf $HOME/.config/MangoHud/heroic.conf
ln -sf $PATHDOT/config/MangoHud/MangoHud.conf $HOME/.config/MangoHud/MangoHud.conf
ln -sf $PATHDOT/config/MangoHud/steam.conf $HOME/.config/MangoHud/steam.conf
ln -sf $PATHDOT/config/MangoHud/valheim.x86_64.conf $HOME/.config/MangoHud/valheim.x86_64.conf
ln -sf $PATHDOT/config/MangoHud/xivlauncher.conf $HOME/.config/MangoHud/xivlauncher.conf

[ ! -d $HOME/.config/nvim ] && mkdir $HOME/.config/nvim
echo "manuell connecting nvim-config in ~/.config"
#ln -sf ~/git/nvim-config $HOME/.config/nvim

#[ ! -d $HOME/.config/rofi ] && mkdir $HOME/.config/rofi
ln -sf $PATHDOT/config/rofi $HOME/.config/rofi

#[ ! -d $HOME/.config/sway ] && mkdir $HOME/.config/sway
ln -sf $PATHDOT/config/sway $HOME/.config/sway

[ ! -d $HOME/.config/swayidle ] && mkdir $HOME/.config/swayidle
ln -sf $PATHDOT/config/swayidle/config $HOME/.config/swayidle/config

#[ ! -d $HOME/.config/swaylock ] && mkdir $HOME/.config/swaylock
ln -sf $PATHDOT/config/swaylock $HOME/.config/swaylock

# XDG user directories
ln -sf $PATHDOT/config/user-dirs.dirs $HOME/.config
ln -sf $PATHDOT/config/user-dirs.locale $HOME/.config

#[ ! -d $HOME/.config/waybar ] && mkdir $HOME/.config/waybar
ln -sf $PATHDOT/config/waybar $HOME/.config/waybar

#[ ! -d $HOME/.config/zellij ] && mkdir $HOME/.config/zellij
ln -sf $PATHDOT/config/zellij/zellij.kdl $HOME/.config/zellij/zellij.kdl

###########################################################
# local/bin
[ ! -d $HOME/.local/bin/scripts ] && mkdir -p $HOME/.local/bin/
ln -sfn $PATHDOT/local/bin/scripts/xdg-portal.sh $HOME/.local/bin

