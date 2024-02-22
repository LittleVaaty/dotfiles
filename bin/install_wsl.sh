#!/usr/bin/zsh

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

if [ ! -d "/$HOME/.config/tmux/plugins/tpm" ]
then
  echo "install tmux pluggins manager"
  mkdir -p ~/.config/tmux/plugins
  git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
fi

cd $HOME

echo "Install complete. Exit the shell and log back in to start the desktop environment."
echo ""
echo "Have fun! :)"
