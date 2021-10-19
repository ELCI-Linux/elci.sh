#! /bim/bash/


PS3='How would you like to install PeerCoin: '
        ARKW=("apt" ".tar.gz 32-bit" "Flatpak" "Skip")
        select fav in "${ARKW[@]}"; do
        case $fav in
"apt")     sudo apt-get update
    sudo apt-get install apt-transport-https
    sudo sh -c "echo 'deb https://peercoin.github.io/deb-repo/ buster main' >> /etc/apt/sources.list.d/peercoin.list"
    wget -O - https://peercoin.github.io/deb-repo/peercoin.apt.key | sudo apt-key add -
    sudo apt-get update
    sudo apt-get install peercoin-qt && break;;
        ".tar.gz 32-bit") wget https://github.com/peercoin/peercoin/releases/download/v0.11.0ppc/peercoin-0.11.0-x86_64-linux-gnu.tar.gz
        sudo chmod u+x peercoin-0.11.0-x86_64-linux-gnu.tar.gz
                tar xvzf peercoin-0.11.0-x86_64-linux-gnu.tar.gz
                cd ./peercoin-0.11.0
                cd ./bin
                chmod +x ./peercoin-qt
		sudo ./peercoin-qt && break;;
        "Flatpak") flatpak install flathub net.peercoin.peercoin-qt && break;;
        "Skip") break;;
    esac
done
exit




