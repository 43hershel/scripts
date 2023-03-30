#!/bin/bash


echo "Updating system" 
# Update packages and system
sudo dnf update

echo "Installing packages" 
#Installing Docker
curl -fsSL https://get.docker.com -o get-docker.sh
 sh get-docker.sh
 sudo service docker start
 sudo service docker status

 #Installing Docker Compose
 sudo dnf install docker-compose 
 # cd /var/lib/docker/volumes for storing data are stored in volumes (needs sudo su)

#Installing Lazydocker 
wget https://github.com/jesseduffield/lazydocker/releases/download/v0.20.0/lazydocker_0.20.0_Linux_x86_64.tar.gz
tar zxf lazydocker_0.20.0_Linux_x86_64.tar.gz
sudo install lazydocker /usr/local/bin

#Installing htop
sudo dnf install htop

#Installing Plex Media Server
sudo dnf install plexmediaserver 

#Installing Syncthing 
sudo dnf install syncthing 

#Installing qbittorrent
sudo dnf install qbittorrent 

#Installing neofetch 
sudo dnf install neofetch
