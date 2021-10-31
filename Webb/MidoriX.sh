#! /bin/bash/

echo -e "\e[0;34m How would you like to install? \e[0m"
PS3='Pick your install method'
Midori=("Flatpak" "Snap"  "Skip" "Quit Installer")
select fav in "${Midori[@]}"; do
    case $fav in
"Flatpak") flatpak install flathub org.midori_browser.Midori && break;;
"Snap") 
        sudo dnf install snapd &&
        sudo ln -s /var/lib/snapd/snap /snap
        sudo snap install midori  -yy && break;;
"Skip")
        break;;
"Quit Installer")
            echo "User requested exit"
            exit;;
        *) echo "invalid option $REPLY";;
    esac
done
