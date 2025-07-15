#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING SOFTWARE"
echo

cd /tmp/
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
cd ~
rm /tmp/yay

PKGS=(
  # TERMINAL UTILITIES --------------------------------------------------
  'lsd'      # Better ls
  'starship' # Prompt
  'atuin'
  'bottom' # System monitoring
  'fzf'
  'fd'
  'neofetch' # Shows system info when you launch terminal
  'openssh'  # SSH connectivity tools
  'bat'      # Better cat
  'tmux'     # terminal multiplexer
  'yazi'     # Terminal file manager
  'ripgrep'
  'dust'  # Disk usage tool
  'curl'  # Remote content retrieval
  'feh'   # Terminal-based image viewer/manipulator
  'gufw'  # Firewall manager
  'ntp'   # Network Time Protocol to set time via network.
  'rsync' # Remote file sync utility
  'unrar' # RAR compression program
  'unzip' # Zip compression program
  'wget'  # Remote content retrieval
  'zip'   # Zip compression program
  'zsh'   # ZSH shell
  'zsh-syntax-highlighting'
  'zsh-autosuggestions'

  # DISK UTILITIES ------------------------------------------------------
  'autofs' # Auto-mounter

  # GENERAL UTILITIES ---------------------------------------------------
  'ttf-inconsolata-nerd'
  'ttf-dejavu'
  'ttf-roboto'
  'ttf-jetbrains-mono-nerd'
  'ttf-font-awesome'

  # DEVELOPMENT ---------------------------------------------------------
  'clang'  # C Lang compiler
  'cmake'  # Cross-platform open-source make system
  'git'    # Version control system
  'gcc'    # C/C++ compiler
  'nodejs' # Javascript runtime environment
  'npm'    # Node package manager
  'python' # Scripting language
  'python-pipx'
  'yarn'   # Dependency management (Hyper needs this)
  'neovim' # Text editor
  'lazygit'
  'tree-sitter-cli'

  # WEB TOOLS -----------------------------------------------------------

  # COMMUNICATIONS ------------------------------------------------------

  # MEDIA ---------------------------------------------------------------
  'nscpot' # Terminal client for spotify
  'cmus'

  # GRAPHICS AND DESIGN -------------------------------------------------

  # PRODUCTIVITY --------------------------------------------------------

  # VIRTUALIZATION ------------------------------------------------------

)

for PKG in "${PKGS[@]}"; do
  echo "INSTALLING: ${PKG}"
  sudo pacman -S "$PKG" --needed
done

echo
echo "Done!"
echo
