#! /bin/bash/
echo -e  "\e[0;32m ------Multi-Touch Support----- \e[0m"
echo -e  "\e[0;35m Touche (too-che), provides multitouch gesture support for laptop users \e[0m"
echo -e  "\e[0;34m $name, Would you like to install touche? \e[0m" &&
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Ok, installing touche!" &&
echo -e  "\e[0;35m Touche: Multi Touch Gestures \e[0m"
echo -e  "\e[0;33m Installing Touche \e[0m"

flatpak install flathub com.github.joseexposito.touche | grep -A 2 Installing
echo -e  "\e[0;32m Touche Installed \e[0m" &&
echo -e  "\e[0;33m Touche Installed using Flatpak \e[0m" &&
cd ..
echo -e  "\e[0;33m Moving on \e[0m"; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done

echo -e  "\e[7;35m -----Auto-CPU Freq----- \e[0m"
echo -e  "\e[7;36m Auto-CPU freq can be used to manage CPU powerdraw and extend battery life \e[0m"
echo -e  "\e[7;33m Would you like to install touche? \e[0m" &&
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Ok, installing auto-cpufreq!" &&
        echo -e "\e[0;31m Lapi recommends Snap \e[0m"
PS3=' How would you like to install Auto-CPUFreq?: '
ACFins=("Snap" "Git" "Skip" "Quit Installer")
select fav in "${ACFins[@]}"; do
    case $fav in
"Snap")
	sudo snap install auto-cpufreq && break;;
"Git")
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer
&& break;;
"Skip")
            break;;
"Quit Installer")
            echo "User requested exit"
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done
