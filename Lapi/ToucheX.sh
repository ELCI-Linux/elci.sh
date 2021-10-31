#! /bin/bash
echo -e  "\e[0;35m Touche: Multi Touch Gestures \e[0m"
echo -e  "\e[0;33m Installing Touche \e[0m"

flatpak install flathub com.github.joseexposito.touche | grep -A 2 Installing
echo -e  "\e[0;32m Touche Installed \e[0m"

