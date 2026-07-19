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

-- windowrule = workspace special:discord silent, class:armcord
windowrule = workspace special:discord silent, class:vesktop
windowrule = workspace special:element silent, class:Element
windowrule = workspace special:email silent, class:thunderbird
windowrule = workspace special:locasend silent, class:localsend
windowrule = workspace special:sound silent, class:org.pipewire.Helvum

windowrule = workspace special:obsidian silent, class:obsidian

-- windowrule = workspace special:thunar, on-created-empty:thunar

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
windowrule = center, class: xdg-desktop-portal-gtk
windowrule = float, class: xdg-desktop-portal-gtk
windowrule = size 900 600, class: xdg-desktop-portal-gtk
windowrule = float, class:chromium, title: (Open|Save) File
windowrule = center, class:chromium, title: (Open|Save) File
windowrule = size 900 550, class:chromium, title: (Open|Save) File

-- firefox
windowrule = center, class: org.mozilla.firefox, title: Library
windowrule = float, class: org.mozilla.firefox, title: Library
windowrule = size 70% 80%, class: org.mozilla.firefox, title: Library

-- thunderbird
windowrule = center, class:thunderbird, title:^(Write)(.*)
windowrule = float, class:thunderbird, title:^(Write)(.*)
windowrule = size 70% 80%, class:thunderbird, title:^(Write)(.*)

-- steam
windowrule = move 10% 10%, class:steam, title: (Friends)(.*)
windowrule = float, class:steam, title: (Friends)(.*)
windowrule = size 30% 80%, class:steam, title: (Friends)(.*)
windowrule = center, class:steam, title: (.*)(Settings)
windowrule = float, class:steam, title: (.*)(Settings)
windowrule = size 70% 80%, class:steam, title: (.*)(Settings)

-- portfolio
-- windowrulev2 = center, class: Portfolio Performance, title: ()
-- windowrulev2 = float, class: Portfolio Performance, title: () 
windowrule = center, class: xdg-desktop-portal-gtk, title:^(PDF-Import-Assistent)
windowrule = float, class: xdg-desktop-portal-gtk, title:^(PDF-Import-Assistent)
windowrule = size 70% 80%, class: xdg-desktop-portal-gtk, title:^(PDF-Import-Assistent)

-- keepass
windowrule = noscreenshare on, class:KeePassXC

-- layers
-- layerrule =
