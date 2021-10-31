#! /bin/bash/

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

