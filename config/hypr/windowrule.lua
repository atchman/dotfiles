-- window rules
-- https://wiki.hypr.land/Configuring/Basics/Window-Rules/

hl.window_rule({
  name = "firefix group",
  match = {
    class = "org.mozilla.firefox",
    title = "(.*)(Mozilla Firefox)$"
  },
  group = "set",
})

hl.window_rule({
  name = "define start window",
  match = {
    class = "gnucash"
  },
  workspace = "3 silent"
})

hl.window_rule({
  match = {
    class = "Portfolio Performance"
  },
  workspace = "3 silent",
})

hl.window_rule({
  match = {
    class = "XIVLauncher.Core",
  },
  workspace = "5 silent",
})

hl.window_rule({
  match = {
    class = "steam",
  },
  workspace = "5 silent",
})

-- scratchpads
hl.window_rule({
  match = {
    class = "KeePassXC",
  },
  workspace = "special:keepass silent",
})

hl.window_rule({
  match = {
    class = "vesktop",
  },
  workspace = "special:discord silent",
})

hl.window_rule({
  match = {
    class = "Element",
  },
  workspace = "special:element silent",
})

hl.window_rule({
  match = {
    class = "thunderbird",
  },
  workspace = "special:email silent",
})

hl.window_rule({
  match = {
    class = "locasend",
  },
  workspace = "special:locasend silent",
})

hl.window_rule({
  match = {
    class = "org.pipewire.Helvum",
  },
  workspace = "special:sound silent",
})

hl.window_rule({
  match = {
    class = "obsidian",
  },
  workspace = "special:obsidian silent",
})


-- Noctalia Settings
hl.window_rule({
    match = { class = "dev.noctalia.Noctalia" },
    float = true,
    size = { 1080, 920 },
})

-- flameshot
hl.window_rule({
  name = "flameshot",
  match = {
    class = "flameshot",
    title = "flameshot",
  },
  move = "0 0",
  pin = true,
  fullscreen = true,
  -- fullscreenstate = true,
  float = true,
})

-- file picker
hl.window_rule({
  name = "general file picker",
  match = {
    class = "xdg-desktop-portal-gtk",
  },
  center = true,
  float = true,
  size = {900, 600},
})
hl.window_rule({
  name = "chromium file picker",
  match = {
    class = "chromium",
    title = "(Open|Save) File"
  },
  center = true,
  float = true,
  size = {900, 550},
})

-- firefox
hl.window_rule({
  name = "firefox",
  match = {
    class = "org.mozilla.firefox",
    titel = "Library",
  },
  center = true,
  float = true,
  size = {"70%", "80%"},
})

-- thunderbird
hl.window_rule({
  name = "thunderbird",
  match = {
    class = "thunderbird",
    title = "^Write.*",
  },
  center = true,
  float = true,
  size = {"70%", "80%"},
})

-- steam
hl.window_rule({
  name = "steam friends",
  match = {
    class = "steam",
    title = "Friends.*",
  },
  float = true,
  size = {"30%", "80%"},
  move = {"10%", "10%"},
})
hl.window_rule({
  name = "steam settings",
  match = {
    class = "steam",
    titel = ".*Settings",
  },
  center = true,
  float = true,
  size = {"70%", "80%"}
})

-- portfolio
hl.window_rule({
  name = "portfolio",
  match = {
    class = "xdg-desktop-portal-gtk",
    title = "^PDF-Import-Assistent",
  },
  center = true,
  float = true,
  size = {"70%", "80%"},
})

-- keepass
hl.layer_rule({
  match = { namespace = "KeePassXC" },
  no_screen_share = true,
})
