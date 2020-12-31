#!/bin/sh

# Install of arch official repositories packages
sudo pacman -S --needed $(comm -12 <(pacman -Slq | sort) <(sort backups/arch-packages/pacman.list )) &&

# Aur helper instalation
cd /opt &&
git clone https://aur.archlinux.org/yay-git.git &&
sudo chown -R yay-git/ &&
cd yay-git &&
makepkg -si &&

# Aur packages instalation
yay -S --needed $(comm -12 <(yay -Slq | sort) <(sort backups/arch-packages/yay.list )) &&

# To prevent creating symlinking folders
mkdir -p ~/.config/VSCodium/User ~/.local &&

# Symlinking dotfiles
cd ~/dotfiles &&
stow linux &&

# Installation of all source programs
cd ~/.local/src/dwm && make && sudo make clean install &&
cd ~/.local/src/dwmblocks && make && sudo make clean install &&
cd ~/.local/src/st && make && sudo make clean install &&

# Changing default shell to zsh
chsh -s $(which zsh) &&

# Auto mount the hard drive
echo 'UUID=0492de4e-821d-48d4-970f-7a7ccb869fe0	/mnt/storage	ext4		rw,relatime	0 2' | sudo tee -a /etc/fstab &&

# Finish and reboot
reboot
