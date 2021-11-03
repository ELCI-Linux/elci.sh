#! /bin/bash/

#preinstall
sudo apt update -yy
sudo apt upgrade -yy

PS3='Choose your video editor: '
VidED=("Kdenlive" "OpenShot" "Shotcut" "Flowblade" "Lightworks" "Blender" "Cinelerra" "VidCutter" "Skip" "Quit Installer")
select fav in "${VidED[@]}"; do
    case $fav in
"Kdenlive")
            sudo apt-get install Kdenlive -yy && break;;
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
echo -e "\e[7;35m Handbrake is a useful tool for converting video and/or audio files \e[0m"
echo -e "\e[7;36m Would you like to install Handbrake? \e[0m"
select yn in "Yes" "No"; do
case $yn in
Yes) flatpak install https://flathub.org/repo/appstream/fr.handbrake.ghb.flatpakref && echo "Run flatpak run fr.handbrake.ghb to launch HandBrake’s graphical user interface, or flatpak run --command=HandBrakeCLI fr.handbrake.ghb to use HandBrake on the command line."
No) break;;
esac
done

