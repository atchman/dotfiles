#!/usr/bin/env bash
# startx
# for wayland compositor

set -euo pipefail

# hyprland
hypr() {
    zellij -l <(cat <<KDL
layout {
    tab name="hypr" {
        pane command="Hyprland"
    }
}
KDL
)
}
# tmux
# tmux new -s hypr Hyprland

# niri
niri() {
    niri-session
}

# help
Help() {
    echo "start wayland compositor"
    echo "choose between following options"
    echo "hypr | h -> Hyprland"
    echo "niri | n -> niri"
}

# --- main ---
# default: niri
if [ $# -eq 0 ]; then
      niri
fi

OPT=$1

case "$OPT" in
    "help" | "h")
        Help
        exit
        ;;
    "hypr")
        hypr
        ;;
    "niri" | "n")
        niri
        ;;
    *)
        echo "need to choose!!!"
        Help
        exit
        ;;
esac
