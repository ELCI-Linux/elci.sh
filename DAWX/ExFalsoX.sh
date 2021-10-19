#! /bin/bash/

echo "Ex Falso"
echo -e  "\e[0;35m Ex Falso is a tag editor. \e[0m"
echo -e  "\e[0;35m Supported file formats include Ogg Vorbis/Opus/Speex/FLAC, MP3, FLAC, MOD/XM/IT, Musepack, Wavpack, MPEG-4 AAC, Monkeys Audio, WMA, SPC, MIDI. \e[0m"
echo "License GPL-2.0-or-later | Source: Flathub"

echo -e  "\e[0;33m Would you like to install VMPK? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) flatpak install flathub net.sourceforge.VMPK -yy; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done
exit

