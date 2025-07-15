#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING AUR SOFTWARE"
echo

echo
echo "INSTALLING YAY"
echo

cd /tmp/
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
cd ~
rm /tmp/yay

PKGS=(
  # SYSTEM UTILITIES ----------------------------------------------------
  'gufw' # Firewall manager

  # UTILITIES -----------------------------------------------------------

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
  'libreoffice-fresh'

  # VIRTUALIZATION ------------------------------------------------------

  # THEMES --------------------------------------------------------------

)

for PKG in "${PKGS[@]}"; do
  yay -S $PKG --needed
done

echo
echo "Done!"
echo
