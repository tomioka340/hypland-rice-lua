-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
-- hl.on("hyprland.start", function () 
--   hl.exec_cmd(terminal)
--   hl.exec_cmd("nm-applet")
--   hl.exec_cmd("waybar & hyprpaper & firefox")
-- end)
hl.on("hyprland.start", function ()
hl.exec_cmd("waybar")
hl.exec_cmd("swaync")
hl.exec_cmd("awww-daemon")
hl.exec_cmd("/usr/lib/hyprpolkitagent/hyprpolkitagent")
hl.exec_cmd("bluetoothctl connect 24:DF:17:23:66:66")
end)



