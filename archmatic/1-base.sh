#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING BASE"
echo

PKGS=(
  # LINUX ----------------------------------------------------------------
  'linux'
  'linux-headers'
  'linux-lts'
  'linux-lts-headers'
  'linux-firmware'
  'lvm2'
  'networkmanager'
  # TERMINAL UTILITIES ---------------------------------------------------
  'base-devel'
  'git'
  'sudo'
  'neovim'
  # DRIVERS --------------------------------------------------------------
  'mesa'
  'libva-mesa-driver'
  'amd-ucode'
)

for PKG in "${PKGS[@]}"; do
  echo "INSTALLING: ${PKG}"
  sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
