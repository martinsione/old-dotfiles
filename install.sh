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
