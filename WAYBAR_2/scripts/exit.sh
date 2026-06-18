#!/bin/bash


hyprctl dispatch killactive


awww img ~/wallpapers-volume-1/wall8.jpg --transition-type none

hyprctl dispatch 'hl.dsp.window.close("killactive", "")'
hyprctl dispatch 'hl.dsp.focus({workspace = 1})'

pkill waybar
waybar &
librewolf

matugen image ~/wallpapers-volume-1/wall8.jpg --source-color-index 0


