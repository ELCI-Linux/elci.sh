#! /bin/bash

PS3='How would you like to install ARk Wallet: '
        ARKW=(".deb 64-bit" ".tar.gz 32-bit" "Flatpak" "Skip")
        select fav in "${ARKW[@]}"; do
        case $fav in
	".deb 64-bit") 
		#download
		wget https://github.com/ArkEcosystem/desktop-wallet/releases/download/2.9.5/ark-desktop-wallet-linux-amd64-2.9.5.deb
		chmod +x ark-desktop-wallet-linux-amd64-2.9.5.deb
		#dependencies
		sudo apt-get install gconf2 gconf-service libappindicator1 libudev-deb
		#installation
		sudo dpkg -i ark-desktop-wallet-linux-amd64-2.9.5.deb && break;;
	".tar.gz 32-bit") wget https://github.com/ArkEcosystem/desktop-wallet/releases/download/2.9.5/ark-desktop-wallet-linux-x64-2.9.5.tar.gz
	sudo chmod u+x ark-desktop-wallet-linux-x64-2.9.5.tar.gz
		tar xvzf ark-desktop-wallet-linux-x64-2.9.5.tar.gz
		cd ./ark-desktop-wallet-linux-x64-2.9.5
		./configure
		make
		sudo make install && break;;
        "Flatpak") flatpak install flathub io.ark.Desktop && break;;
        "Skip") break;;
    esac
done
exit






