#!/bin/bash

configFolder=("nvim" "i3" "tmux" "zsh")
for configFolder in "${configFolder[@]}"; do
  if [ ! -d "/$HOME/.config/${configFolder}" ]
  then
    echo "  [+] Create ${configFolder} config directory"
    mkdir -p "${HOME}/.config/${configFolder}"
  fi
done

dotfiles=("nvim/init.vim" "i3/config" "tmux/tmux.conf")
for dotfile in "${dotfiles[@]}";do
 ln -sf "${HOME}/dotfiles/.config/${dotfile}" "${HOME}/.config/${dotfile}"
done
