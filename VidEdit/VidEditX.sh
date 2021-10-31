#! /bin/bash/

#preinstall
sudo apt update
sudo apt upgrade

PS3='Choose your video editor: '
VidED=("Kdenlive" "OpenShot" "Shotcut" "Flowblade" "Lightworks" "Blender" "Cinelerra" "VidCutter" "Skip" "Quit Installer")
select fav in "${VidED[@]}"; do
    case $fav in
"Kdenlive")
            sudo apt-get install Kdenlive && break;;
"Openshot")
                sudo apt-get install openshot -yy && break;;
"Shotcut")
		sudo apt-get install shotcut -yy && break;;
"Flowblade")
		sudo apt-get install flowblade -yy && break;;
"Lightworks")
		sudo apt-get install lightworks -yy && break;;
"Blender")
		sudo apt-get install blender -yy && break;;
"Cinelerra")
		sudo apt-get install cinelerra -yy && break;;
"VidCutter"
		sudo apt-get install vidcutter && break;;
"All")
		echo -e "\e[0;33m Installing Kdenlive, OpenShot, Flowblade and Blender \e[0m"

		sudo apt-get install kdenlive -yy
		sudo apt-get install openshot -yy
		sudo apt-get install flowblade -yy
		sudo apt-get install blender -yy
		
"Skip")
            break;;
"Quit Installer")
            echo "User requested exit"
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done


