#!/bin/bash

CONFIG=~/.config/hypr/binds.lua
COLOR=~/.config/hypr/animations.lua

rm ~/CURRENT_WALLS/*.jpg
cp ~/wallpapers-volume-9/*.jpg ~/CURRENT_WALLS/

sed -i '/ALT + 1/s/source-color-index [0-9]/source-color-index 0/' "$CONFIG"
sed -i '/ALT + 2/s/source-color-index [0-9]/source-color-index 0/' "$CONFIG"
sed -i '/ALT + 3/s/source-color-index [0-9]/source-color-index 0/' "$CONFIG"
sed -i '/ALT + 4/s/source-color-index [0-9]/source-color-index 0/' "$CONFIG"
sed -i '/ALT + 5/s/source-color-index [0-9]/source-color-index 0/' "$CONFIG"
sed -i '/ALT + 6/s/source-color-index [0-9]/source-color-index 0/' "$CONFIG"
sed -i '/ALT + 7/s/source-color-index [0-9]/source-color-index 0/' "$CONFIG"
sed -i '/ALT + 8/s/source-color-index [0-9]/source-color-index 0/' "$CONFIG"
sed -i '/ALT + 9/s/source-color-index [0-9]/source-color-index 0/' "$CONFIG"
sed -i '/ALT + 0/s/source-color-index [0-9]/source-color-index 0/' "$CONFIG"

sed -i '/CTRL + 1/s/source-color-index [0-9]/source-color-index 0/' "$CONFIG"
sed -i '/CTRL + 2/s/source-color-index [0-9]/source-color-index 0/' "$CONFIG"
sed -i '/CTRL + 3/s/source-color-index [0-9]/source-color-index 0/' "$CONFIG"
sed -i '/CTRL + 4/s/source-color-index [0-9]/source-color-index 0/' "$CONFIG"
sed -i '/CTRL + 5/s/source-color-index [0-9]/source-color-index 0/' "$CONFIG"
sed -i '/CTRL + 6/s/source-color-index [0-9]/source-color-index 0/' "$CONFIG"
sed -i '/CTRL + 7/s/source-color-index [0-9]/source-color-index 0/' "$CONFIG"
sed -i '/CTRL + 8/s/source-color-index [0-9]/source-color-index 0/' "$CONFIG"
sed -i '/CTRL + 9/s/source-color-index [0-9]/source-color-index 0/' "$CONFIG"
sed -i '/CTRL + 0/s/source-color-index [0-9]/source-color-index 0/' "$CONFIG"

matugen image ~/CURRENT_WALLS/wall1.jpg --source-color-index 0