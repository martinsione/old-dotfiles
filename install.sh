#!/bin/sh
sudo pacman -S --needed $(comm -12 <(pacman -Slq | sort) <(sort backups/arch-packages/pacman.list )) &&
yay -S --needed $(comm -12 <(yay -Slq | sort) <(sort backups/arch-packages/yay.list )) &&
mkdir -p ~/.config/VSCodium/User ~/.local &&
stow linux &&
cd ~/.local/src/dwm && make && sudo make clean install &&
cd ~/.local/src/dwmblocks && make && sudo make clean install &&
cd ~/.local/src/st && make && sudo make clean install &&
chsh -s $(which zsh) &&
. ~/.zprofile

# I don't know how to automatice this yet
# UUID=0492de4e-821d-48d4-970f-7a7ccb869fe0	/mnt/storage	ext4		rw,relatime	0 2
