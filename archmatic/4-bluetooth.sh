#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING BLUETOOTH COMPONENTS"
echo

PKGS=(
  'bluez'                # Daemons for the bluetooth protocol stack
  'bluez-utils'          # Bluetooth development and debugging utilities
  'bluez-firmware'       # Firmwares for Broadcom BCM203x and STLC2300 Bluetooth chips
  'blueberry'            # Bluetooth configuration tool
  'blueman'              # Bluetooth configuration tool
  'pulseaudio-bluetooth' # Bluetooth support for PulseAudio
)

for PKG in "${PKGS[@]}"; do
  echo "INSTALLING ${PKG}"
  sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
