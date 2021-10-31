#! /bin/bash
sudo apt-get install snap snapd -yy
echo "Choose your IG client"
PS3='Choose your Instagram Client: '
IGClient=("instragramport" "instagraph" "INSTALL ALL" "Skip" "Quit Installer")
select fav in "${IGClient[@]}"; do
    case $fav in
"instagramport") sudo snap install instagramport && break;;
"instagraph")	sudo snap install instagraph && break;;
"INSTALL ALL") sudo snap install instagramport ; sudo snap install instagraph && break;;
"Skip")
            break;;
"Quit Installer")
            echo "User requested exit"
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
