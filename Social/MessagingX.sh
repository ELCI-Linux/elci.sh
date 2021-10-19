#! /bin/bash/

echo -e "\e[0;33m Welcome to the MessagingX installer \e[0m"
echo -e "\e[0;33m ELCI recommends Franz - a multi-platform messaging app with support for over 20 unique services \e[0m"
echo -e "\e[0;33m Franz supports: \e[0m"
echo -e "\e[0;34m 	- Facebook and Facebook Messenger \e[0m"
echo -e "\e[0;35m 	- Instagram \e[0m"
echo -e "\e[0;32m 	- Whatsapp \e[0m"
echo -e "\e[0;36m 	- Telegram \e[0m"
echo -e "\e[0;37m 	- Hangouts, Google Keep, and Gmail  \e[0m"
echo -e "\e[0;34m 	- Discord \e[0m"
echo -e "\e[0;37m and many more! \e[0m"

echo -e "\e[0;33m Would you like to install Franz?  \e[0m"
while true; do
    read -p "Do you wish to install this program?" yn
    case $yn in
        [Yy]* ) bash FranzXInstall.sh; break;;
        [Nn]* ) exit;;
        * ) echo "Please enter y or n";;
    esac
done
