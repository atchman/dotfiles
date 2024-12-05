#!/usr/bin/env bash
# start wayland compositor
# in terminal multiplexer

# zellij
# zellij attach --create hypr
zellij -l <(cat <<KDL
layout {
    tab name="hypr" {
        pane command="Hyprland"
    }
}
KDL
)

# tmux
# tmux new -s hypr Hyprland
