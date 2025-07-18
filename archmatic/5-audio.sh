#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING AUDIO COMPONENTS"
echo

PKGS=(
  'alsa-utils'
  'alsa-plugins'
  'pipewire'
  'pipewire-alsa'
  'pipewire-pulse'
  'pipewire-audio'
  'pipewire-jack'
  'wireplumber'
  'pavucontrol'
)

for PKG in "${PKGS[@]}"; do
  echo "INSTALLING ${PKG}"
  sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
