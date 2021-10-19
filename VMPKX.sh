#! /bin/bash/

echo -e  "\e[0;34m VMPK - Virtual MIDI Piano Keyboard \e[0m"
echo -e  "\e[0;35m VMPK is a MIDI events generator and receiver. \e[0m"
echo "It doesn't produce any sound by itself, but can be used to drive a MIDI synthesizer (either hardware or software, internal or external)."
echo "You can use the computer's keyboard to play MIDI notes, and also the mouse."
echo "You can use the Virtual MIDI Piano Keyboard to display the played MIDI notes from another instrument or MIDI file player."
echo "Search for VMPK on flathub.com for more details"

echo -e  "\e[0;33m Would you like to install VMPK? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) flatpak install flathub net.sourceforge.VMPK -yy; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done
exit

