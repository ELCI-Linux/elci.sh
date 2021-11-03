#! /bin/bash

	PS3='Choose your e-mail client:'
	PostMan=("Mailspring" "Thunderbird" "Skip" "Quit Installer")
	select fav in "${PostMan[@]}"; do
	case $fav in
	"Mailspring")
             echo -e "\e[7;35m mailspring \e[0m"
             echo -e "\e[0;35m  - Multiple accounts (IMAP & Office 365) \e[0m"
             echo -e "\e[0;36m  - Touch and gesture support \e[0m"
             echo -e "\e[0;36m  - Advanced shortcuts \e[0m"
             echo -e "\e[0;36m  - Lightning-fast search \e[0m"
             echo -e "\e[0;36m  - Undo send \e[0m"
             echo -e "\e[0;36m  - Unified Inbox \e[0m"
             echo -e "\e[0;36m  - Read receipts, link tracking, and more \e[0m"
             echo -e "\e[0;36m  - Mac, Windows, and Linux support \e[0m"
             echo -e "\e[0;36m  - Themes and layouts (including dark mode) \e[0m"
             echo -e "\e[0;36m  - Localized into 9 languages \e[0m"
             echo -e "\e[7;37m Would you like to install mailspring \e[0m"
		select yn in "Yes" "No"; do
		case $yn in
		Yes) sudo snap install mailspring && break;;
		No) break;;
		esac
		done
	break;;
	"Thunderbird")
             echo -e "\e[7;37m Would you like to install Mozilla Thunderbird \e[0m"
		sudo apt-get install thunderbird -yy
	break;;
	esac
	done
	exit
