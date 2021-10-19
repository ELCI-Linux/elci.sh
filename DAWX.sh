#! /bin/bash/




echo -e  "\e[0;33m Would like to install DAWs (Digital Audio Workstations)? \e[0m"

while true; do
yn
    case $yn in
        [Yy]* ) bash ArdourX.sh &&
                bash  BitWigX.sh
                bash  FamiX.sh
                bash  MuseX.sh
                bash  RosegardenX.sh; break;;

        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo -e  "\e[0;33m Would you like to install MIDI applications? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) bash DrumstickX.sh &&
		bash VMPKX.sh; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done
echo -e  "\e[0;33m Would you like to install sheet music editors? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) bash DrumstickX.sh &&
                bash VMPKX.sh; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done
exit

