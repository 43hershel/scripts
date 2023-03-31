#!/bin/bash

#For unziping files "unzip file.zip -d destination_folder"
#Pending: .zshrc file, ssh keys

echo "Updating system" 
# Update packages and system
sudo dnf update


# Install i3 window manager
sudo dnf install i3wm 
sudo dnf install i3status

#Install kitty terminal emulator
sudo dnf install kitty 

#Install feh
sudo dnf install feh

#Install rofi
sudo dnf install rofi 

echo "Retrieving castro's dotfiles" 
#Download dotfiles
git clone https://github.com/43hershel/dotfiles

echo "Setting up config files"
#Installing "Oh my Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


#Move i3 dotfiles to .config directory 
cd ~/.config/
mkdir i3
cd  ~/dotfiles/i3wm
sudo mv config config.save i3status.conf ~/.config/i3

#Move kitty config to .config directory
cd ~/.config/kitty
rm kitty.conf
cd ~/dotfiles/kitty/
unzip kitty-themes.zip -d ~/.config/kitty 
sudo mv kitty.conf theme.conf ~/.config/kitty

#Installing the fonts 
cd ~/dotfiles
unzip JetBrainsMono-2.304.zip
mv JetBrainsMono-2.304 /usr/share/fonts

#Move wallpaper to images directory 
cd ~/dotfiles
mv pexels-eberhard-grossgasteiger-691668.jpg ~/Imágenes/

