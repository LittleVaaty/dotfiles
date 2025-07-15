#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "FINAL SETUP AND CONFIGURATION"

# ------------------------------------------------------------------------

echo
echo "Configureing zsh as default sheel"
chsh -s /usr/bin/zsh

# ------------------------------------------------------------------------

echo
echo "Setting up lightdm"
# Copies the wallpaper in the /usr/share
sudo cp ../resources/cherry-blossom.png /usr/share/cherry-blossom.png

#backup lightdm-gtk-greeter config
sudo mv /etc/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf.bak

#Backup lightdm config
sudo mv /etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf.bak

# copies both lightdm.conf and lightdm-gtk-greeter conf in /etc/lightdm
sudo cp ./conf.d/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
sudo cp ./conf.d/lightdm.conf /etc/lightdm/lightdm.conf

# ------------------------------------------------------------------------

# ------------------------------------------------------------------------

echo "Do you want to confige MAKEPKG to use all 8 cores (y/n)? :"
read ans1

if [ $ans1 = "y" ] || [ $ans1 = "Y" ]; then
  echo
  echo "Configuring MAKEPKG to use all 8 cores"

  sudo sed -i -e 's|[#]*MAKEFLAGS=.*|MAKEFLAGS="-j$(nproc)"|g' makepkg.conf
  sudo sed -i -e 's|[#]*COMPRESSXZ=.*|COMPRESSXZ=(xz -c -T 8 -z -)|g' makepkg.conf
fi
# ------------------------------------------------------------------------

echo
echo "INSTALLING RUST"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# ------------------------------------------------------------------------

echo
echo "Installing Tmux Pluggins Manager"

if [ ! -d "/$HOME/.config/tmux/plugins/tpm" ]; then
  echo "install tmux pluggins manager"
  mkdir -p ~/.config/tmux/plugins
  git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
fi

# ------------------------------------------------------------------------

# ------------------------------------------------------------------------

# ------------------------------------------------------------------------

# ------------------------------------------------------------------------

# ------------------------------------------------------------------------

# ------------------------------------------------------------------------

echo
echo "Enabling Network Time Protocol so clock will be set via the network"

sudo ntpd -qg
sudo systemctl enable ntpd.service
sudo systemctl start ntpd.service

# ------------------------------------------------------------------------

# ------------------------------------------------------------------------

echo "Done!"
echo
echo "Reboot now..."
echo
