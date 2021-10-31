#! /bin/bash/
echo -e  "\e[0;32m ------Multi-Touch Support----- \e[0m"
echo -e  "\e[0;35m Touche (too-che), provides multitouch gesture support for laptop users \e[0m"
echo -e  "\e[0;34m $name, Would you like to install touche? \e[0m" &&
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Ok, installing touche!" &&
echo "Running ToucheX.sh"
bash ToucheX.sh &&
echo -e  "\e[0;33m Touche Installed using Flatpak \e[0m" &&
cd ..
echo -e  "\e[0;33m Moving on \e[0m"; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done

echo -e  "\e[0;32m -----Power Management----- \e[0m"
echo -e  "\e[0;35m Touche (too-che), provides multitouch gesture support for laptop users \e[0m"
echo -e  "\e[0;34m $name, Would you like to install touche? \e[0m" &&
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Ok, installing auto-cpufreq!" &&
bash auto-cpufreqX.sh && break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done
