#!/bin/bash

echo -e "\nINSTALLING SOFTWARE\n"

PKGS=(

    # TERMINAL UTILITIES --------------------------------------------------

    'neovim'                # Terminal Editor
    'zsh'                   # ZSH shell
    'zsh-completions'       # Tab completion for ZSH
    'tmux'                  # Terminal multiplexer

    # DISK UTILITIES ------------------------------------------------------

    # GENERAL UTILITIES ---------------------------------------------------

    # DEVELOPMENT ---------------------------------------------------------

    'clang'                 # C Lang compiler
    'cmake'                 # Cross-platform open-source make system
    'git'                   # Version control system
    'gcc'                   # C/C++ compiler
    'glibc'                 # C libraries
    'meld'                  # File/directory comparison
    'nodejs'                # Javascript runtime environment
    'npm'                   # Node package manager
    'python'                # Scripting language
    'yarn'                  # Dependency management (Hyper needs this)

    # MEDIA ---------------------------------------------------------------

    # GRAPHICS AND DESIGN -------------------------------------------------

    # PRODUCTIVITY --------------------------------------------------------

    # Music ---------------------------------------------------------------

    # COMMUNICATIONS ------------------------------------------------------

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo apt install "$PKG" -y
done

echo -e "\nDone!\n"
