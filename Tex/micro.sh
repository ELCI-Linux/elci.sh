#! /bin/bash/


echo -e "\e[7;31m Pick an install method for micro \e[0m"
PS3='Choose your install method for micro: '
micro=("guix" "apt-get" "dnf" "pacman" "zypper"  "Skip" "Quit Installer")
select fav in "${micro[@]}"; do
    case $fav in
"curl")
curl -o eget.sh https://zyedidia.github.io/eget.sh
shasum -a 256 eget.sh
bash eget.sh &&
curl https://getmic.ro | bash
 && break;;
"apt-get")
        sudo apt-get install micro -yy && break;;
"pacman")
        sudo pacman -S micro && break;;
"dnf")
       sudo dnf install micro ** break:;
"zypper")
       sudo zypper install micro -yy && break
"Skip")
            break;;
"Quit Installer")
            echo "User requested exit"
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac




