#!/bin/zsh

dotfiles=(".vimrc" ".tmux.conf")

dir="${HOME}/dotfiles"

for dotfile in "${dotfiles[@]}";do
 ln -sf "${dir}/${dotfile}" "${HOME}/${dotfile}"
done
