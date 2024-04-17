#!/bin/bash

function is_bin_in_path {
  builtin type -P "$1" &> /dev/null
}

printf "\nUpdate Wsl"

sudo apt update && sudo apt upgrade

sudo apt install -y \
  neovim \
  zsh \
  zsh-autosuggestions \
  tmux \
  git \
  cmake \
  gcc \
  ranger \
  stow

if ! is_bin_in_path nvm;
then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
  nvm install 20
fi

if [ ! -d "/$HOME/.config/tmux/plugins/tpm" ]
then
  echo "install tmux pluggins manager"
  mkdir -p ~/.config/tmux/plugins
  git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
fi

cd "$HOME"

echo "Install complete. Exit the shell and log back in to start the desktop environment."
echo ""
echo "Have fun! :)"
