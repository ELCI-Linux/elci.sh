#! /bin/bash/


echo -e "\e[0;35m uLauncher is a system wide utility that allows you to conduct functions from a pop-up bar \e[0m"
echo -e "\e[0;33m You are currently running: \e[0m"
neofetch| grep OS
PS3='Choose your OS build type: '
uLver=("Debian" "Arch" "Fedora" "Skip" "Quit Installer")
select fav in "${uLver[@]}"; do
    case $fav in
"Debian")
wget https://github.com/Ulauncher/Ulauncher/releases/download/5.12.2/ulauncher_5.12.2_all.deb
sudo chmod +x ulauncher_5.12.2_all.deb
sudo dpkg -i ulauncher_5.12.2_all.deb && break;;
"Arch")
git clone https://aur.archlinux.org/ulauncher.git && cd ulauncher && makepkg -is && break;;
"Fedora")
sudo dnf install ulauncher && break;;

"Skip")
            break;;
"Quit Installer")
            echo "User requested exit"
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

sudo apt --fix-broken install -yy
