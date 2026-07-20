-- config
--

hl.config({
  -- general
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

  -- decoration
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

  -- dwindle
  dwindle = {
    pseudotile = true,    -- master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
    force_split = 2,     -- 2 = always split to the right
    preserve_split = true,    -- you probably want this
    default_split_ratio = 1.0,
    split_bias = 1,
  },

  -- master
  master = {
    new_status = "master",
    new_on_top = false,
    orientation = "left",
  },

  -- scrolling
  scrolling = {
  },

  -- gestures
  gestures = {},

  -- group
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

  -- cursor
  cursor = {
    inactive_timeout = 4,
  },
})
