#!/usr/bin/env bash
# start wayland compositor
# in terminal multiplexer

# zellij attach --create hypr
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

niri() {
    niri-session
}

# --- main ---
niri
