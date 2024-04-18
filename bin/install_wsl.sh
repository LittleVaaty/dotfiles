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
  stow \
  ripgrep \
  fd-find \
  fzf

if ! is_bin_in_path nvm;
then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
  nvm install 20
fi

if ! is_bin_in_path startship;
then
  curl -sS https://starship.rs/install.sh | sh
fi

if ! is_bin_in_path lazygit;
then
  LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
  curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
  tar xf lazygit.tar.gz lazygit
  sudo install lazygit /usr/local/bin
fi

if ! is_bin_in_path fish;
then
  sudo apt-add-repository ppa:fish-shell/release-3
  sudo apt update
  sudo apt install fish
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
