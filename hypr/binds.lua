
---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
local terminal    = "kitty"
local fileManager = "dolphin"
local menu = "rofi -show drun"
local browser = "librewolf"


---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
local closeWindowBind = hl.bind(mainMod .. " + C", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))    -- dwindle only

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })


----custom//keybinds//start//here//
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd("emote"))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("~/.config/waybar/scripts/launch.sh"))
hl.bind(mainMod .. " + CTRL + W", hl.dsp.exec_cmd("killall waybar"))
hl.bind(mainMod .. " + ESCAPE", hl.dsp.exec_cmd("~/scripts/exit.sh"))
hl.bind(mainMod .. " + SHIFT + CTRL + B", hl.dsp.exec_cmd("brave --incognito & disown"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("vscodium"))

hl.bind(mainMod .. " +SHIFT + left",  hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.window.move({ direction = "down" }))


hl.bind(mainMod .. " + PRINT", hl.dsp.exec_cmd("grim ~/screenshots/$(date +'%Y%m%d_%H%M%S').jpg"))
hl.bind(mainMod .. " + SHIFT + PRINT", hl.dsp.exec_cmd("grim -g \"$(slurp)\" ~/screenshots/$(date +'%Y%m%d_%H%M%S').jpg "))


------for wallpapers----------------
---unified volumes--change the directory name ----use a script to simplify things--------

hl.bind("ALT + 1", hl.dsp.exec_cmd("matugen image ~/CURRENT_WALLS/wall1.jpg --source-color-index 0"))
hl.bind("ALT + 2", hl.dsp.exec_cmd("matugen image ~/CURRENT_WALLS/wall2.jpg --source-color-index 0"))
hl.bind("ALT + 3", hl.dsp.exec_cmd("matugen image ~/CURRENT_WALLS/wall3.jpg --source-color-index 0"))
hl.bind("ALT + 4", hl.dsp.exec_cmd("matugen image ~/CURRENT_WALLS/wall4.jpg --source-color-index 0"))
hl.bind("ALT + 5", hl.dsp.exec_cmd("matugen image ~/CURRENT_WALLS/wall5.jpg --source-color-index 0"))
hl.bind("ALT + 6", hl.dsp.exec_cmd("matugen image ~/CURRENT_WALLS/wall6.jpg --source-color-index 0"))
hl.bind("ALT + 7", hl.dsp.exec_cmd("matugen image ~/CURRENT_WALLS/wall7.jpg --source-color-index 0"))
hl.bind("ALT + 8", hl.dsp.exec_cmd("matugen image ~/CURRENT_WALLS/wall8.jpg --source-color-index 0"))
hl.bind("ALT + 9", hl.dsp.exec_cmd("matugen image ~/CURRENT_WALLS/wall9.jpg --source-color-index 0"))
hl.bind("ALT + 0", hl.dsp.exec_cmd("matugen image ~/CURRENT_WALLS/wall10.jpg --source-color-index 0"))


hl.bind("CTRL + 1", hl.dsp.exec_cmd("matugen image ~/CURRENT_WALLS/wall11.jpg --source-color-index 0"))
hl.bind("CTRL + 2", hl.dsp.exec_cmd("matugen image ~/CURRENT_WALLS/wall12.jpg --source-color-index 0"))
hl.bind("CTRL + 3", hl.dsp.exec_cmd("matugen image ~/CURRENT_WALLS/wall13.jpg --source-color-index 0"))
hl.bind("CTRL + 4", hl.dsp.exec_cmd("matugen image ~/CURRENT_WALLS/wall14.jpg --source-color-index 0"))
hl.bind("CTRL + 5", hl.dsp.exec_cmd("matugen image ~/CURRENT_WALLS/wall15.jpg --source-color-index 0"))
hl.bind("CTRL + 6", hl.dsp.exec_cmd("matugen image ~/CURRENT_WALLS/wall16.jpg --source-color-index 0"))
hl.bind("CTRL + 7", hl.dsp.exec_cmd("matugen image ~/CURRENT_WALLS/wall17.jpg --source-color-index 0"))
hl.bind("CTRL + 8", hl.dsp.exec_cmd("matugen image ~/CURRENT_WALLS/wall18.jpg --source-color-index 0"))
hl.bind("CTRL + 9", hl.dsp.exec_cmd("matugen image ~/CURRENT_WALLS/wall19.jpg --source-color-index 0"))
hl.bind("CTRL + 0", hl.dsp.exec_cmd("matugen image ~/CURRENT_WALLS/wall20.jpg --source-color-index 0"))




hl.bind("ALT + SHIFT + 1", hl.dsp.exec_cmd("exec ~/scripts/wallset1.sh"))
hl.bind("ALT + SHIFT + 2", hl.dsp.exec_cmd("exec ~/scripts/wallset2.sh"))
hl.bind("ALT + SHIFT + 3", hl.dsp.exec_cmd("exec ~/scripts/wallset3.sh"))
hl.bind("ALT + SHIFT + 4", hl.dsp.exec_cmd("exec ~/scripts/wallset4.sh"))
hl.bind("ALT + SHIFT + 5", hl.dsp.exec_cmd("exec ~/scripts/wallset5.sh"))
hl.bind("ALT + SHIFT + 6", hl.dsp.exec_cmd("exec ~/scripts/wallset6.sh"))
hl.bind("ALT + SHIFT + 7", hl.dsp.exec_cmd("exec ~/scripts/wallset7.sh"))
hl.bind("ALT + SHIFT + 8", hl.dsp.exec_cmd("exec ~/scripts/wallset8.sh"))
hl.bind("ALT + SHIFT + 9", hl.dsp.exec_cmd("exec ~/scripts/wallset9.sh"))
hl.bind("ALT + SHIFT + 0", hl.dsp.exec_cmd("exec ~/scripts/wallset10.sh"))


hl.bind("CTRL + SHIFT + 1", hl.dsp.exec_cmd("exec ~/scripts/wallset11.sh"))
hl.bind("CTRL + SHIFT + 2", hl.dsp.exec_cmd("exec ~/scripts/wallset12.sh"))
hl.bind("CTRL + SHIFT + 3", hl.dsp.exec_cmd("exec ~/scripts/wallset13.sh"))
hl.bind("CTRL + SHIFT + 4", hl.dsp.exec_cmd("exec ~/scripts/wallset14.sh"))
hl.bind("CTRL + SHIFT + 5", hl.dsp.exec_cmd("exec ~/scripts/wallset15.sh"))
hl.bind("CTRL + SHIFT + 6", hl.dsp.exec_cmd("exec ~/scripts/wallset16.sh"))
hl.bind("CTRL + SHIFT + 7", hl.dsp.exec_cmd("exec ~/scripts/wallset17.sh"))
hl.bind("CTRL + SHIFT + 8", hl.dsp.exec_cmd("exec ~/scripts/wallset18.sh"))
hl.bind("CTRL + SHIFT + 9", hl.dsp.exec_cmd("exec ~/scripts/wallset19.sh"))
hl.bind("CTRL + SHIFT + 0", hl.dsp.exec_cmd("exec ~/scripts/wallset20.sh"))
