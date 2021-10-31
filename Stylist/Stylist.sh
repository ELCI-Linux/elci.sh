#! /bin/bash


#!/bin/bash

#macos - By ChrisTitusTech
sudo apt install git gnome-shell-extensions chrome-gnome-shell gnome-tweak-tool -y
git clone https://github.com/ChrisTitusTech/Linux-MacOS-GNOME.git ~/MacOS
mkdir ~/.themes
mkdir ~/.icons
mv ~/MacOS/themes/* ~/.themes
mv ~/MacOS/icons/* ~/.icons
sudo mv ~/MacOS/walls/* /usr/share/backgrounds/
#------GNOME Settings
gsettings set org.gnome.mutter center-new-windows 'true'
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'
gsettings set org.gnome.desktop.interface gtk-theme "WhiteSur-dark"
gsettings set org.gnome.desktop.wm.preferences theme "WhiteSur-dark"
gsettings set org.gnome.desktop.interface icon-theme 'BigSur'
gsettings set org.gnome.desktop.interface cursor-theme 'capitaine-cursors-light'
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/macOS-BS3.jpg'
gsettings get org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/macOS-BS1.jpg'
#-------Albert Search and Cairo Dock
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
sudo apt update
sudo apt install albert cairo-dock cairo-dock-plug-ins -y
