#! /bin/bash/

PS3='How would you like to install BitCoin Core: '
        BTCCore=("apt" "Flatpak" "Skip")
        select fav in "${BTCCore[@]}"; do
        case $fav in
	"apt") sudo apt-add-repository ppa:bitcoin/bitcoin &&
		sudo apt-get update
		sudo apt-get install bitcoin-qt && exit;;
        "Flatpak") flatpak install flathub org.bitcoincore.bitcoin-qt && break;;
	"Skip") break;;
    esac
done
