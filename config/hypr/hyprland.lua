-- hyprland config

-- monitors
require("monitor")
-- environment variables
require("env")
-- workspace rules
require("workspace")
-- window rules
require("windowrule")

-- execute your favorite apps at launch
require("autostart")

-- key binds
require("keybind")

-- config
require("config")

require("animation")

hl.config({
  input = {
    kb_layout = "de",    -- de,us
    kb_variant = "",
    kb_model = "",
    kb_options = "",
    kb_rules = "",
    sensitivity = 0.0,    -- -1.0 - 1.0, 0 means no modification.
    follow_mouse = 1,

    touchpad = {
      natural_scroll = false,
    },
  },
})

-- device
require("device")

-- misc
require("misc")
-- xwayland
require("xwayland")
--debug
require("debug")

-- plugin
require("plugin")

-- noctalia
require("noctalia/noctalia-colors")
-- For Noctalia Color templates
require("noctalia")
