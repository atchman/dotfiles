-- autostart
--
-- https://wiki.hypr.land/Configuring/Basics/Autostart/


--exec-once = hash dbus-update-activation-environment 2>/dev/null && \
--            dbus-update-activation-environment --systemd --all   -- Wayland magic (screen sharing etc.)
-- exec-once = systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP QT_QPA_PLATFORMTHEME -- More wayland magic (screen sharing etc.)
-- exec-once = ~/.local/bin/xdg-portal.sh

-- exec-once = hyprctl dispatch exec 'sleep 2s && nm-applet --indicator'
-- exec-once = xfce4-power-manager


-- Turn monitors off if locked (swaylock running) and idle for 10 seconds
-- 
-- This will lock your screen after 300 seconds of inactivity, then turn off
-- your displays after another 30 seconds, and turn your screens back on when
-- resumed. It will also lock your screen before your computer goes to sleep.
-- exec-once = swayidle -w -- \
--            timeout 300 'swaylock -f -c 000000' \
--            timeout 330 'hyprctl dispatch dpms off' \
--            resume 'hyprctl dispatch dpms on' \
--            before-sleep 'swaylock -f -c 000000'

-- systemctl --user import-environment -- exec-once = awww init && sleep 1 && awww img ~/.config/hypr/black-white-tree-grave.jpg
--"mako & waybar",
--


local startup = {
"/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &",
  "/usr/lib/at-spi-bus-launcher --launch-immediately",
  "systemctl --user restart pipewire",    -- Restart pipewire to avoid bugs
  "hyprpaper",
  "noctalia",
  "ghostty",
  -- Foot terminal daemon
  "foot --server",
  "hyprctl dispatch exec 'sleep 2s && firewall-applet'",
  "hyprctl dispatch exec 'sleep 2s && system-config-printer-applet'",
  "hyprctl dispatch exec 'sleep 2s && mullvad-vpn'",
  -- apps
  "[workspace 1 silent] flatpak run org.mozilla.firefox",
  -- exec-once = [workspace 2 silent] sleep 1s && footclient
  "[workspace 2 silent] sleep 1s && ghostty",
  -- scratchpads
  "[workspace special:keepass silent] keepassxc %f",
  "[workspace special:element silent] element-desktop",
  "[workspace special:email silent] thunderbird"
}

hl.on("hyprland.start", function ()
  for i = 1, #startup do
    hl.exec_cmd(startup[i])
  end
end)
