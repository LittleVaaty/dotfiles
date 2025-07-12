#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING I3"
echo

PKGS=(
  'i3-wm'     # I3 Window Manager
  'i3lock'    # i3 lock screen
  'polybar'   # i3 status bar
  'nitrogen'  # Background browser
  'rofi'      # App launcher
  'autorandr' # Manage multiple screen setup with randr
  'xorg-xrandr'

)

for PKG in "${PKGS[@]}"; do
  echo "INSTALLING: ${PKG}"
  sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
