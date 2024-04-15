#!/bin/bash

sudo pacman -S --needed neovim zsh tmux git cmake gcc ranger

if [ ! -d "/$HOME/.config/tmux/plugins/tpm" ]
then
  echo "install tmux pluggins manager"
  mkdir -p ~/.config/tmux/plugins
  git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
fi

echo "Done !"


