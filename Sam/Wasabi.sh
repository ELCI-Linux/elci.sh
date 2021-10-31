#! /bin/bash/

PS3='How would you like to install Wasabi: '
        Wasabi=("apt" ".tar.gz 32-bit" "Flatpak" "Skip")
        select fav in "${Wasabi[@]}"; do
        case $fav in
"apt") echo "coming soon" &&  break;;
        ".tar.gz 32-bit") echo "coming soon"  && break;;
        "Flatpak") flatpak install flathub io.wasabiwallet.WasabiWallet && break;;
        "Skip") break;;
    esac
done
exit






