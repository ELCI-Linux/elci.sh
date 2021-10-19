#! /bin/bash/

echo -e  "\e[0;35m Rosegarden: MIDI and Audio Sequencer and Notation Editor \e[0m"
echo -e  "\e[0;34m A general-purpose music composition and editing environment that offers a mixture of features inspired by MIDI sequencers, score editors, and DAWs. \e[0m"
echo "Search for Rosegarden on flathub.com for more details"

echo -e  "\e[0;33m Would you like to install Rosegarden? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) flatpak install flathub net.sourceforge.VMPK -yy; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done
exit


