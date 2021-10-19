#! /bin/bash/

PS3='Choose your Audio Management: '
        AudioMan=("ALSA" "JACK" "Powerwire" "PulseAudio" "Apple Silicon"  "Skip" "Quit Installer")
        select fav in "${AudioMan[@]}"; do
        case $fav in
        "ALSA") sudo apt-get install alsa alsa-tools && break;;
        "Jack") sudo apt-get install jack && break;;
        "PowerWire") echo "coming soon"  break;;
        "Pulse Audio") sudo apt install pulseaudio &&
echo -e  "\e[0;33m $name, would you like to also install the graphical volume mixer? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo apt install pavucontrol && break;;
        No ) echo -e "\e[0;33m Ok, moving on \e[0m" && break;;
    esac
done
break;;
        "Skip")
        break;;
        "Quit Installer")
            echo "User requested exit"
            exit;;
        *) echo "invalid option $REPLY";;
        esac
        done







