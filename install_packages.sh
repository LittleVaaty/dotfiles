#!/bin/bash

echo Install Package

apt install vim
apt install tmux
apt install terminal
apt install python-pip
apt install tree
apt install htop
apt install figlet
apt install zsh
apt install curl 
apt install cmus
apt install rubygems
apt install fd-find
apt install shellcheck

pip install terminal_velocity

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

gem install mdless
