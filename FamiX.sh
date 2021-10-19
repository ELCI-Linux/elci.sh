#! /bin/bash/

echo -e  "\e[0;37m FamiStudio NES Music Editor \e[0m"
sleep 0.6s
echo -e  "\e[0;37m FamiStudio is very simple music editor for the Nintendo Entertainment System or Famicom. \e[0m"
sleep 0.8s
echo -e  "\e[0;37m It is targeted at both chiptune artists and NES homebrewers. \e[0m"
sleep 0.3s
echo -e  "\e[0;35m Would like to install Fami? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) flatpak install flathub org.famistudio.FamiStudio -yy; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
exit

