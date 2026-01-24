# abbreviations
# user-defined words that are replaced with longer phrases when entered

abbr -a startw ~/.local/bin/startw.sh

# neovim
abbr -a vi nvim
abbr -a vim nvim
# abbr -a n nvim
# abbr -a N sudo nvim

# grub
abbr -a grubc sudo grub-mkconfig -o /boot/grub/grub.cfg
abbr -a grubi sudo grub-install

# flatpak
abbr -a fu flatpak update

# mullvad
abbr -a mr mullvad reconnect

# list
abbr -a la ls -la
abbr -a ls ls --color=auto
abbr -a ll ls -lav --ignore=..

# location
abbr -a DF cd ~/dotfiles
abbr -a NF cd ~/.config/nvim
abbr -a GF cd ~/git
abbr -a PF cd ~/personal
abbr -a LF cd ~/personal/learn
abbr -a TF cd ~/personal/dev
abbr -a QF cd ~/personal/dev/quadlet
abbr -a IF cd ~/personal/dev/infra/
abbr -a AOC cd ~/personal/learn/advent-of-code/aoc-2024
