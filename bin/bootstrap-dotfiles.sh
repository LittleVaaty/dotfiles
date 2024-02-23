#!/bin/bash

echo "stowing dotfiles"

read -r -p "Do you want stow GUI file? [y/N] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]
then
  stow alacritty
  stow i3
  stow nitrogen
  stow polybar
  stow rofi
fi

stow lvim
stow nvim
stow ranger
stow starship
stow tmux
stow Xresources
stow zsh

echo "Done !"
