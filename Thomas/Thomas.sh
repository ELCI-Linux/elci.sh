#! /bin/bash


select yn in "Yes" "No"; do
case $yn in
Yes) flatpak --system install flathub com.valvesoftware.Steam
	echo -e "\e[0;32m Would you like to install steam-link? \e[0m"
	select yn in "Yes" "No"; do 
	case $yn in
	Yes) flatpak --system install flathub com.valvesoftware.SteamLink && break;;
	No) break;;
	esac
	done
		echo -e "\e[0;32m Would you like to install Boxtron compatibility tool? \e[0m"
                select yn in "Yes" "No"; do
                case $yn in
                Yes) sudo flatpak install -y --system runtime/com.valvesoftware.Steam.CompatibilityTool.Boxtron/x86_64/stable && break;;
                No) break;;
                esac
                done
		
		echo -e "\e[0;32m Would you like to install proton compatibility tool? \e[0m"
		select yn in "Yes" "No"; do
		case $yn in
		Yes) sudo flatpak install -y --system runtime/com.valvesoftware.Steam.CompatibilityTool.Proton/x86_64/stable
			# Proton-GE
			echo -e "\e[0;32m Would you like to install Proton-GE compatibility tool? \e[0m"
			select yn in "Yes" "No"; do
			case $yn in
			Yes) sudo flatpak install -y --system runtime/com.valvesoftware.Steam.CompatibilityTool.Proton-GE/x86_64/stable
				break;;
			No) break;;
			esac
			done
			# Proton Experimental
			echo -e "\e[0;32m Would you like to install Proton Experimental compatibility tool? \e[0m"
			select yn in "Yes" "No"; do
                        case $yn in
                        Yes) sudo flatpak install -y --system runtime/com.valvesoftware.Steam.CompatibilityTool.Proton-Exp/x86_64/stable
				break;;
                        No) 		break;;
                        esac
                        done
			# Proton Tricks
			echo -e "\e[0;32m Would you like to install Proton tricks? \e[0m"

                        select yn in "Yes" "No"; do
                        case $yn in
                        Yes) sudo flatpak install -y --system runtime/com.valvesoftware.Steam.Utility.protontricks/x86_64/stable && break;;
                        No) break;;
                        esac
                        done
			#End of proton installs
			break;;

		No) break;;
		esac
		done

		echo -e "\e[0;32m Would you like to install Vulkyn compatibility tool? \e[0m"
                select yn in "Yes" "No"; do
                case $yn in
                Yes) sudo flatpak install -y --system runtime/com.valvesoftware.Steam.VulkanLayer.MangoHud/x86_64/stable
			break;;

                No) break;;
                esac
                done
		break;;

		No) break;;
                esac
                done
exit
