#!/usr/bin/zsh

printf "\nUpdate Wsl"

sudo apt update && sudo apt upgrade

sudo apt install stow -y

cd $HOME/repo

printf "\nStowing Dotfiles\n\n"

stow dotfiles

sudo apt install -y \
  neovim \
  zsh \
  zsh-autosuggestions \
  tmux \
  git \
  cmake \
  gcc

cd $HOME

echo "Install complete. Exit the shell and log back in to start the desktop environment."
echo ""
echo "Have fun! :)"
