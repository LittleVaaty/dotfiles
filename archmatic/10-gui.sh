#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(
  # DISK UTILITIES ------------------------------------------------------
  'autofs'  # Auto-mounter
  'gparted' # Disk utility

  # GENERAL UTILITIES ---------------------------------------------------
  'alacritty'
  'ghostty'
  'ttf-inconsolata-nerd'
  'nautilus'

  # DEVELOPMENT ---------------------------------------------------------
  'meld' # File/directory comparison
  'arduino-ide'
  'arduino-avr-core'

  # WEB TOOLS -----------------------------------------------------------
  'firefox' # Web browser

  # COMMUNICATIONS ------------------------------------------------------

  # MEDIA ---------------------------------------------------------------

  # GRAPHICS AND DESIGN -------------------------------------------------
  'gimp' # GNU Image Manipulation Program

  # PRODUCTIVITY --------------------------------------------------------

  # VIRTUALIZATION ------------------------------------------------------

)

for PKG in "${PKGS[@]}"; do
  echo "INSTALLING: ${PKG}"
  sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
