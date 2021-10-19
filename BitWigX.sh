#! /bin/bash/
echo -e  "\e[0;37m Bitwig Studio is a digital audio workstation (DAW) that inspires you to take greater control of your music... \e[0m"
sleep 0.6s
echo -e  "\e[0;37m giving you access to every aspect of your production. \e[0m"
sleep 0.8s
echo -e  "\e[0;37m Streamline your creative process and quickly evolve your ideas into complete songs, tracks, and compositions. \e[0m"
sleep 1s
echo -e  "\e[0;37m Record and arrange, improvise and perform, or do it all at once. Design sounds. Build instruments. \e[0m"
sleep 0.3s
echo -e  "\e[0;35m Would like to install BitWig Studio? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo -e  "\e[0;33m Ok, installing Bitwig \e[0m"
flatpak install flathub com.bitwig.BitwigStudio -yy; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done
exit
