#! /bin/bash/

echo -e  "\e[0;33m Drumstick is a Multiplatform MIDI File Player for Linux, Windows and macOS with advanced features: \e[0m"

echo " -MIDI Output to hardware MIDI ports, or any other Drumstick backend like soft-synths"
echo " -Transpose song tonality between -12 and +12 semitones"
echo " -Change MIDI volume level (using MIDI CC7)"
echo " -Scale song speed between half and double tempo"
echo " -Piano Players, MIDI Channels, Rhythm, and Lyrics (Karaoke) views"
echo " -Supports .MID (Standard MIDI files) .KAR (MIDI Karaoke) and .WRK (Cakewalk) file formats"




select yn in "Yes" "No"; do
    case $yn in
        Yes )flatpak install flathub net.sourceforge.dmidiplayer; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac

