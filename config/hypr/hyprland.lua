-- hyprland config

-- monitors
hl.monitor({
  output    = "eDP-1",
  mode      = "1920x1080",
  position  = "0x0",
  scale     = 1,
})

-- hl.monitor({
--   output    = "eDP-1",
--   mode      = "modeline 172.68  1920 2040 2248 2576  1080 1081 1084 1118 -hsync +vsync",
--   position  = "0x0",
--   scale     = "1",
-- })

-- environment variables
require("envs")

-- workspace rules
require("workspaces")
-- window rules
require("windowrules")

-- execute your favorite apps at launch
require("execs")

-- key binds
require("keybinds")

hl.config({
  general = {
    gaps_in = 3,
    gaps_out = 2, 10, 5, 10,
    border_size = 2,
    col = {
      active_border   = { colors = {"rgb(33ccff)", "rgba(00ff99ee)"}, angle = 30 },
      inactive_border = "rgba(595959aa)",
      layout = "dwindle",
    },
  },
  decoration = {
    rounding = 3,

    blur = {
      -- battery drain
      enabled = false,
      size = 3,
      passes = 1,
      new_optimizations = true,
    },

    shadow = {
      -- battery drain
      enabled = false,
      range = 4,
      render_power = 3,
      ignore_window = true,
      color = 0x00000080,
      offset = { 4, 4},
    },
  },
})

hl.config({
  dwindle = {
    pseudotile = true,    -- master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
    force_split = 2,     -- 2 = always split to the right
    preserve_split = true,    -- you probably want this
    default_split_ratio = 1.0,
    split_bias = 1,
  },
})

hl.config({
  master = {
    new_status = "master",
    new_on_top = false,
    orientation = "left",
  },
})

-- animation curves
-- https://www.cssportal.com/css-cubic-bezier-generator/
-- animation configs
hl.curve( "cubic-bezier", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.05} } } )
hl.animation({ leaf = "windows", enabled = true, speed = 1, 7,  curve = "cubic-bezier", style = "slide" })
hl.animation({ leaf = "border", enabled = true, speed = 1, 10, curve = "default", })
hl.animation({ leaf = "fade", enabled = true, speed =  1, 0.0000001, curve = "default" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1, 6, bezier = "default" , style = "slide" })


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

-- Device Config
-- hl.device({
--   name = "logitech-wireless-mouse",
--   sensitivity = 0.0
--})

hl.config({
  gestures = { },
})

hl.config({
  group = {
    drag_into_group = 1,
    col = {
      border_active = { colors = { "rgb(33ccff)", "rgba(00ff99ee)"}, angle = 30 },
      border_inactive = "rgb(33ccff)",
      border_locked_inactive = "rgba(595959aa)",
    },

    groupbar = {
      enabled = true,
      height = 1,
      stacked = false,
      render_titles = false,
      text_color = "rgba(000000ff)",
      col = {
        active = "rgb(33ccff)",
        inactive = "rgba(595959aa)",
        locked_inactive = "rgba(595959aa)",
      },
    },
  },
})

hl.config({
  misc = {
    disable_hyprland_logo = true,
    disable_splash_rendering = true,
    -- font_family = 
    vfr = true,
    disable_autoreload = true;
  },
})

hl.config({
  xwayland = {
    enabled = true,
    -- force_zero_scaling = true,
  },
})

hl.config({
  cursor = {
    inactive_timeout = 4,
  },
})

hl.config({
  debug = {
    disable_logs = true,
    enable_stdout_logs = false,
    colored_stdout_logs = true,
    -- suppress_errors = true,
  },
})

-- plugin
require("plugin")

require("noctalia/noctalia-colors")

-- For Noctalia Color templates
require("noctalia")
