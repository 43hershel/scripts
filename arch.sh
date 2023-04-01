#!/bin/bash

#For unziping files "unzip file.zip -d destination_folder"

echo "Updating system" 
# Update packages and system
sudo pacman -Syu

echo "Installing packages" 
#Install i3 window manager
sudo pacman -S i3 
sudo pacman -S i3status

#Install git
sudo pacman -S git 

#Install kitty terminal emulator
sudo pacman -S kitty 

#Install feh
sudo pacman -S feh

#Install rofi
sudo pacman -S rofi 

#Install xrandr 
sudo pacman -S xorg-xrandr

echo "Retrieving castro's dotfiles" 
#Download dotfiles
git clone https://github.com/43hershel/dotfiles


#Move i3 dotfiles to .config directory 
cd ~/.config/
mkdir i3
cd  ~/dotfiles/i3
sudo mv config config.save i3status.conf ~/.config/i3

#Move kitty config to .config directory
cd ~/.config/kitty
rm kitty.conf
cd ~/dotfiles/kitty/
unzip kitty-themes.zip -d ~/.config/kitty 
sudo mv kitty.conf theme.conf ~/.config/kitty

#Installing the fonts 
#Installing the fonts 
cd ~/dotfiles 
unzip JetBrainsMono-2.304.zip
sudo mv JetBrainsMono-2.304 /usr/share/fonts

#Move wallpaper to images directory 
cd ~/dotfiles
mv pexels-eberhard-grossgasteiger-691668.jpg ~/Imágenes/

echo "Setting up config files"
#Installing "Oh my Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

