#! /bin/bash/
echo -e  "\e[0;35m Ardour is a multi-channel digital audio workstation... \e[0m"

echo -e  "\e[0;35m allowing you to record, edit, mix and master audio and MIDI projects. \e[0m"


echo -e  "\e[0;35m It is targeted at audio engineers, musicians, soundtrack editors and composers. \e[0m"

echo -e  "\e[0;35m System Requirements: . \e[0m"



echo -e  "\e[0;35m CPU:64-bit dual-core or better x86 CPU with SSE4.1 support \e[0m"
neofetch | grep CPU

echo -e  "\e[0;32m Memory: 4GB RAM. \e[0m"
neofetch | grep Memory

echo -e  "\e[0;35m Display Resolution: Minimum 1280 x 768 pixel screen resolution. \e[0m"
xdpyinfo | grep dimensions

echo -e  "\e[0;35m Storage: Minimum 12GB free disk space (for full content installation). \e[0m"
df -h | grep dev/sda

echo -e  "\e[0;35m Would like to install Ardour? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) flatpak install flathub org.ardour.Ardour -yy && sleep 4s && xdotool type 3 && xdotool key Enter ; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done
exit



