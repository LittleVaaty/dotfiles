# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"

if [ "$TMUX" = "" ]; then tmux; fi

command -v starship &>/dev/null && eval "$(starship init zsh)"
