#!/bin/bash

echo Install Package

apt install vim terminator tree htop zsh curl cmus git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
