export ZSH="$HOME/.local/share/oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git tmux)

ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_CONFIG=$HOME/.config/tmux/tmux.conf
source $ZSH/oh-my-zsh.sh

# User configuration
path+=('/opt/exercism')
export PATH
