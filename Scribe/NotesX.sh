#! /bin/bash/

echo -e "\e[0;33m Ok, moving on \e[0m"

#pre-install
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

#install sequence

echo -e "\e[0;35m Joplin \e[0m"
echo -e "\e[0;33m Ok, moving on \e[0m"

bash JoplinX.sh
bash WizNotX.sh
bash Standard-NotesX.sh
bash NotesUpX.sh
