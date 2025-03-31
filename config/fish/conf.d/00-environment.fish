set -Ux HOSTNAME (uname -n)
set -Ux HOSTTYPE (uname -m)
set -Ux OSTYPE (uname -o)

set -Ux XDG_CONFIG_HOME $HOME/.config
set -Ux XDG_CACHE_HOME $HOME/.cache
set -Ux XDG_DATA_HOME $HOME/.local/share
set -Ux XDG_STATE_HOME $HOME/.local/state

set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx MANPAGER 'nvim +Man!'

set -Ux LSCOLORS ExGxcxdxCxegDxabagacad
