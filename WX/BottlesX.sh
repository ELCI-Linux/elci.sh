#! /bin/bash/
chmod +x BottlesX.sh
echo -e  "\e[0;35m Easily run Windows software on Linux with Bottles! \e[0m"
echo -e  "\e[0;33m Installing Bottles \e[0m"
flatpak install flathub com.usebottles.bottles -yy | grep -A 2 Installing
echo -e  "\e[0;32m BottlesX Done \e[0m"
