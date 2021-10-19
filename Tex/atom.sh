#! /bin/bash/


echo -e "\e[7;31m Pick an install method for atom \e[0m"
PS3='Choose your install method for atom: '
atom=("deb/rpm" "snap" "PPA" "Skip" "Quit Installer")
select fav in "${atom[@]}"; do
    case $fav in
"deb")
echo "not currently working"
#        wget -s https://atom-installer.github.com/v1.58.0/atom-amd64.deb?s=1627025597&ext=.deb && break;;
"rpm")
        echo "not currently working" && break;;
"snap")
        sudo add-apt-repository ppa:webupd8team/atom &&
	sudo apt-get update &&
	sudo apt-get install atom && break;;
"Skip")
            break;;
"Quit Installer")
            echo "User requested exit"
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac





