-- Environment Variables

-- XDG Specifications
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- QT
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")

-- Toolkit
hl.env("GDK_BACKEND,wayland", "x11")
hl.env("SDL_VIDEODRIVER", "wayland")    -- x11
hl.env("CLUTTER_BACKEND", "wayland")


hl.env("_JAVA_AWT_WM_NONREPARENTING", "1")

-- nvidia
-- hl.env("LIBVA_DRIVER_NAME", "iHD")

-- wlroots
-- hl.env("WLR_RENDERER", "vulkan")
-- hl.env("WLR_NO_HARDWARE_CURSORS", "1")
-- hl.env("WLR_DRM_NO_ATOMIC", "1")
hl.env("WLR_LIBINPUT_NO_DEVICES", "1")
-- hl.env("XWAYLAND_NO_GLAMOR", "1")  with this you'll need to use gamescope for gaming

-- G-SYNC
-- hl.env("__GL_GSYNC_ALLOWED", "1")
-- hl.env("__GL_VRR_ALLOWED", "1")

-- Mozilla
hl.env("MOZ_ENABLE_WAYLAND", "1")
hl.env("MOZ_DISABLE_RDD_SANDBOX", "1")

-- Theme
-- Cursor
hl.env("XCURSOR_THEME", "catppuccin-mocha-mauve-cursors")
-- hl.env("XCURSOR_SIZE", "34")
hl.env("HYPRCURSOR_THEME", "catppuccin-mocha-mauve-cursors")
hl.env("HYPRCURSOR_SIZE" ,"34")
-- or use tools such as lxappearance or nwg-look
-- hl.env("GTK_THEME", "Nordic")
-- hl.env("QT_STYLE_OVERRIDE", "Qogir-dark")


--
-- hl.env("TERM", "ghostty")
-- hl.env("EDITOR", "nvim")
-- hl.env("BROWSER", "org.mozilla.firefox")
