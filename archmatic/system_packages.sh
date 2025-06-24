#!/bin/bash

packages=(
  rofi-emoji-git
  noto-fonts-emoji
  xarchiver
  gnome-keyring
  gnome-disk-utility
  libgnome-keyring
  uthash
  libconfig
  python-pip
  xdotool
  devour-git
  picom
  tree
  poppler
  ueberzugpp
  rust
  rate-mirrors-bin
  pacman-contrib
  eza
  python-pillow
  imagemagick
  feh
  mpv
  zathura
  zathura-pdf-poppler
  lshw
  gnome-bluetooth
  brightnessctl
  tela-circle-icon-theme-black
  materia-gtk-theme
  swaync
  swaybg
  swaylock
  libnotify
  slurp
  xdg-desktop-portal-wlr
  xdg-desktop-portal-hyprland
  nwg-look
  wl-clipboard
  wlsunset
)

for package in "${packages[@]}"; do
  installed=$(yay -Qi "$package" 2>/dev/null | awk -F ' *: ' '$1 == "Name" { print $2 }')
  if [[ -z "$installed" ]]; then
    yay -Syy "$package" -y --needed
  else
    echo "$package is already installed"
  fi
done
