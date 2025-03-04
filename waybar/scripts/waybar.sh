#!/bin/bash

DIR="$HOME/.config/waybar/"
CONFIG_FILES="$DIR/config.jsonc $DIR/colorschemes/ $DIR/style.css"

trap "killall waybar" EXIT

while true; do
  ~/.config/waybar/launch.sh --everforest &
  killall waybar
done
