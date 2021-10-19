#! /bin/bash
neofetch | grep OS

sudo apt install apt-transport-https curl -yy &&
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg -yy &&
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list -yy&&
sudo apt update -yy &&
sudo apt install brave-browser -yy
echo "Install Process Done"

