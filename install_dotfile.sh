#!/bin/bash

configFolder=("nvim" "i3" "tmux")
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

# Zsh installation
ln -sf "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"

if [ ! -d "/$HOME/.local/share/oh-my-zsh" ]
then
    echo "  [+] Create oh-my-zsh data directory"
    mkdir -p "/$HOME/.local/share/oh-my-zsh"
fi

if [ ! -f "/$HOME/.local/share/oh-my-zsh/oh-my-zsh.sh" ]
then
    echo "  [+] Install oh-my-zsh"
    ZSH="$HOME/.local/share/oh-my-zsh" sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if [ ! -d "/$HOME/repositories" ]
then
    echo "  [+] Create repositories directory"
    mkdir -p "/$HOME/repositories"
fi

if [ ! -d "/$HOME/repositories/dracula-zsh" ]
then
  echo "  [+] Install dracula theme for zsh"
  git clone https://github.com/dracula/zsh.git ~/repositories/dracula-zsh
  ln -s ~/repositories/dracula-zsh/dracula.zsh-theme ~/.local/share/oh-my-zsh/themes/dracula.zsh-theme
fi

if [ ! -f "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim ]
then
    echo "  [+] Install vim plug"
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi

echo "Done !"


