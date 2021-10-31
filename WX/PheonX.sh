#! /bin/bash/
echo -e  "\e[0;35m Phoenicis PlayOnLinux: Install and run Windows software on Linux \e[0m"
echo -e  "\e[0;33m Installing Phoenicis \e[0m"

flatpak install flathub org.phoenicis.playonlinux -yy | grep -A 2 Permissions

echo -e  "\e[0;32m PhoenX done \e[0m"

