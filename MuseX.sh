#! /bin/bash/

echo -e  "\e[0;35m MusE is a MIDI/Audio sequencer with recording and editing capabilities. \e[0m"
sleep 0.3s
echo -e  "\e[0;35m It can perform audio effects like chorus/flanger... \e[0m"
sleep 0.3s
echo -e  "\e[0;35m in real-time via LASH and it supports Jack and ALSA interfaces. \e[0m"
sleep 0.3s
echo -e  "\e[0;35m MusE aims to be a complete multitrack virtual studio for Linux. \e[0m"

echo -e  "\e[0;36m Would you like to install Muse? \e[0m"


select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo -e  "\e[0;36m Ok, installing Muse \e[0m"
flatpak install flathub io.github.muse_sequencer.Muse; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done
exit

