#!/bin/bash
echo "updating the system and installing basic packages..."
sudo pacman -Syu --noconfirm base-devel vim feh xorg xorg-drivers xorg-xinit i3-gaps alacritty pulseaudio fish firefox
git clone https://aur.archlinux.org/yay-git.git
cd yay-git/
makepkg -si --noconfirm 
cd
sudo rm -r yay-git/
clear
echo "installing AUR packages..."
yay -Syu --noconfirm polybar picom-ibhagwan-git nerd-fonts-complete starship ranger ttf-icomoon-feather
clear
echo "copying your dotfiles..."
cp .alacritty.yml .xinitrc ~/ 
cp -r fish/ i3/ polybar/ rofi/ starship.toml ~/.config/ 
mkdir -p ~/.local/share/rofi/ 
cp -r themes/ ~/.local/share/rofi/ 
cp walls/ ~/
clear
echo "done!"
