#!/usr/bin/env bash

# installing current used dotfiles
# wayland: hyprland

############################################################
# home directory
ln -sn "$(pwd)"/home/.bash_aliases $HOME/.bash_aliases
ln -sn "$(pwd)"/home/.bash_logout $HOME/.bash_profile
ln -sn "$(pwd)"/home/.bash_profile $HOME/.bash_profile


## fallback xorg
ln -sn "$(pwd)"/home/xinitrc $HOME/.xinitrc
ln -sn "$(pwd)"/home/xserverrc $HOME/.xserverrc
###########################################################
# local/bin
[ -d $HOME/.local/bin ] && rm -r $HOME/.local/bin
ln -sn "$(pwd)"/script $HOME/.local/bin

###########################################################
# firefox
[ ! -d $HOME/.var/app/org.mozilla.firefox/.mozilla/firefox ]  
ln -sn $(pwd)/firefox/chrome/userChrome.css ~/.var/app/org.mozilla.firefox/.mozilla/firefox/

###########################################################
# config directory
[ ! -d $HOME/.config ] && mkdir $HOME/.config

## XDG user directories
[ -f $HOME/.config/user-dirs.dirs ] && rm $HOME/.config/user-dirs.dirs
ln -sn "$(pwd)"/config/user-dirs.dirs $HOME/.config
[ -f $HOME/.config/user-dirs.locale ] && rm $HOME/.config/user-dirs.locale
ln -sn "$(pwd)"/config/user-dirs.locale $HOME/.config


[ -d $HOME/.config/alacritty ] && rm -r $HOME/.config/alacritty
ln -sn "$(pwd)"/config/alacritty $HOME/.config/alacritty

[ -d $HOME/.config/autostart ] && rm -r $HOME/.config/autostart
ln -sn "$(pwd)"/config/autostart ~/.config/autostart

[ -d $HOME/.config/borgmatic.d ] && rm -r $HOME/.config/borgmatic.d
ln -sn "$(pwd)"/config/borgmatic.d $HOME/.config/borgmatic.d

[ -d $HOME/.config/bottom ] && rm -r $HOME/.config/bottom
ln -sn "$(pwd)"/config/bottom $HOME/.config/bottom

[ -d $HOME/.config/btop ] && rm -r $HOME/.config/btop
ln -sn "$(pwd)"/config/btop ~/.config/btop

[ -d $HOME/.config/calcurse ] && rm -r $HOME/.config/calcurse
ln -sn "$(pwd)"/config/calcurse ~/.config/calcurse

[ -d $HOME/.config/containers ] && rm -r $HOME/.config/containers
ln -sn "$(pwd)"/containers  $HOME/.config/containers

[ -d $HOME/.config/environment.d ] && rm -r $HOME/.config/environment.d
ln -sn "$(pwd)"/environment.d  $HOME/.config/environment.d

[ -d $HOME/.config/fastfetch ] && rm -r $HOME/.config/fastfetch
ln -sn "$(pwd)"/config/fastfetch ~/.config/fastfetch

[ -d $HOME/.config/firewall ] && rm -r $HOME/.config/firewall
ln -sn "$(pwd)"/config/firewall ~/.config/firewall

[ -d $HOME/.config/fish ] && rm -r $HOME/.config/fish
ln -sn "$(pwd)"/config/fish ~/.config/fish

[ -d $HOME/.config/flameshot ] && rm -r $HOME/.config/flameshot
ln -sn "$(pwd)"/config/flameshot ~/.config/flameshot

[ -d $HOME/.config/foot ] && rm -r $HOME/.config/foot
ln -sn "$(pwd)"/config/foot $HOME/.config/foot

[ -d $HOME/.config/fuzzel ] && rm -r $HOME/.config/fuzzel
ln -sn "$(pwd)"/config/fuzzel $HOME/.config/fuzzel

[ -d $HOME/.config/ghostty ] && rm -r $HOME/.config/ghostty
ln -sn "$(pwd)"/config/ghostty ~/.config/ghostty

[ -d $HOME/.config/git ] && rm -r $HOME/.config/git
ln -sn "$(pwd)"/config/git $HOME/.config/git

[ -d $HOME/.config/gitui ] && rm -r $HOME/.config/gitui
ln -sn "$(pwd)"/config/gitui $HOME/.config/gitui

[ -d $HOME/.config/glow ] && rm -r $HOME/.config/glow
ln -sn "$(pwd)"/config/glow ~/.config/glow

[ -d $HOME/.config/hypr ] && rm -r $HOME/.config/hypr
ln -sn "$(pwd)"/config/hypr $HOME/.config/hypr

[ -d $HOME/.config/i3 ] && rm -r $HOME/.config/i3
ln -sn "$(pwd)"/config/i3 $HOME/.config/i3

[ -d $HOME/.config/i3status ] && rm -r $HOME/.config/i3status
ln -sn "$(pwd)"/config/i3status $HOME/.config/i3status

[ -f $HOME/.config/locale.conf ] && rm $HOME/.config/locale.conf
ln -sn "$(pwd)"/locale.conf ~/.config/locale.conf

[ -d $HOME/.config/mako ] && rm -r $HOME/.config/mako
ln -sn "$(pwd)"/config/mako $HOME/.config/mako

[ ! -d $HOME/.config/MangoHud ] && mkdir $HOME/.config/MangoHud
cp "$(pwd)"/config/MangoHud/MangoHud.conf $HOME/.config/MangoHud

[ -d $HOME/.config/mpd ] && rm -r $HOME/.config/mpd 
ln -sn "$(pwd)"/config/mpd ~/.config/mpd

[ -d $HOME/.config/mpv ] && rm -r $HOME/.config/mpv
ln -sn "$(pwd)"/config/mpv ~/.config/mpv

[ -d $HOME/.config/neofetch ] && rm -r $HOME/.config/neofetch
ln -sn "$(pwd)"/config/neofetch ~/.config/neofetch

[ -d $HOME/.config/niri ] && rm -r $HOME/.config/niri
ln -sn "$(pwd)"/config/niri ~/.config/niri

[ -d $HOME/.config/noctalia ] && rm -r $HOME/.config/noctalia
ln -sn "$(pwd)"/config/noctalia ~/.config/noctalia

[ -d $HOME/.config/nvim ] && rm -r $HOME/.config/nvim
echo "manuell connecting nvim-config in ~/.config"
ln -sn "$(pwd)"/config/nvim $HOME/.config/nvim

[ -d $HOME/.config/nwg-look ] && rm -r $HOME/.config/nwg-look 
ln -sn "$(pwd)"/config/nwg-look ~/.config/nwg-look

[ -d $HOME/.config/pipewire ] && rm -r $HOME/.config/pipewire
ln -sn "$(pwd)"/config/pipewire ~/.config/pipewire

[ -d $HOME/.config/qt5ct/colors ] && rm -r $HOME/.config/qt5ct/colors
ln -sn "$(pwd)"/config/qt5ct $HOME/.config/qt5ct/colors

[ -f $HOME/.config/starship.toml ] && rm -r $HOME/.config/starship.toml
ln -sn "$(pwd)"/config/starship/starship.toml ~/.config/starship.toml

[ -d $HOME/.config/swayidle ] && rm -r $HOME/.config/swayidle
ln -sn "$(pwd)"/config/swayidle $HOME/.config/swayidle

[ -d $HOME/.config/swaylock ] && rm -r $HOME/.config/swaylock
ln -sn "$(pwd)"/config/swaylock $HOME/.config/swaylock

[ -d $HOME/.config/swww ] && rm -r $HOME/.config/swww
ln -sn "$(pwd)"/config/swww $HOME/.config/swww

[ -d $HOME/.config/wavemon ] && rm -r $HOME/.config/wavemon
ln -sn "$(pwd)"/config/wavemon $HOME/.config/wavemon

[ -d $HOME/.config/waybar ] && rm -r $HOME/.config/waybar
ln -sn "$(pwd)"/config/waybar $HOME/.config/waybar

[ -d $HOME/.config/wireplumber ] && rm -r $HOME/.config/wireplumber
ln -sn "$(pwd)"/config/wireplumber ~/.config/wireplumber

[ -d $HOME/.config/xsettingsd ] && rm -r $HOME/.config/xsettingsd
ln -sn "$(pwd)"/config/xsettingsd ~/.config/xsettingsd

[ -d $HOME/.config/zellij ] && rm -r $HOME/.config/zellij
ln -sn "$(pwd)"/config/zellij $HOME/.config/zellij

