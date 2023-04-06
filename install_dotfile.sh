#!/bin/bash

configFolder=("nvim" "i3" "tmux" "zsh")
for configFolder in "${configFolder[@]}"; do
  if [ ! -d "/$HOME/.config/${configFolder}" ]
  then
    echo "  [+] Create ${configFolder} config directory"
    mkdir -p "${HOME}/.config/${configFolder}"
  fi
done

dotfiles=("nvim/init.vim" "i3/config" "tmux/tmux.conf" "zsh/zshrc")
for dotfile in "${dotfiles[@]}";do
 ln -sf "${HOME}/dotfiles/.config/${dotfile}" "${HOME}/.config/${dotfile}"
done

# Zsh installation

ln -sf "$HOME/dorfile/.zshenv" "$HOME/.zshenv"

if [! -d "/$HOME/.local/share/oh-my-zsh"]
then
    echo "  [+] Create oh-my-zsh data directory"
    mkdir -p "/$HOME/.local/share/oh-my-zsh"
fi

echo "Install ho-my-zsh"
ZSH="$HOME/.local/share/oh-my-zsh" sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


