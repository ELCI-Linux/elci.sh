#! /bin/bash/

echo -e "\e[7;31m Pick an install method for emacs \e[0m"
PS3='Choose your install method for emacs: '
emacs=("guix" "apt-get" "dnf" "pacman" "zypper"  "Skip" "Quit Installer")
select fav in "${emacs[@]}"; do
    case $fav in
"guix")
        guix package -i emacs -yy && break;;
"apt-get")
        sudo apt-get install emacs -yy && break;;
"pacman")
        sudo pacman -S emacs && break;;
"dnf")
       sudo dnf install emacs ** break:;
"zypper")
       sudo zypper install emacs -yy && break
"Skip")
            break;;
"Quit Installer")
            echo "User requested exit"
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac

