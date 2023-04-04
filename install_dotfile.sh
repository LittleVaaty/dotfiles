#!/bin/bash

if [ ! -d "/$HOME/.config/nvim" ]
then
  echo '  [+] Create nvim config directory'
  mkdir -p ~/.config/nvim
fi



dotfiles=(".vimrc" ".tmux.conf")

dir="${HOME}/dotfiles"

for dotfile in "${dotfiles[@]}";do
 ln -sf "${dir}/${dotfile}" "${HOME}/${dotfile}"
done
