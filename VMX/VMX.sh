#! /bin/bash


#Desktop Virtualisation

echo -e "\e[0;35m The following tools can be used to create and host virutal machines running desktop operating systems. \e[0m"
echo -e "\e[0;33m Installing Virtualbox \e[0m"
chmod +x VMOracleX.sh

echo -e "\e[0;35m Twitter clients allow you to browse Twitter and tweet from your terminal \e[0m"
echo -e "\e[0;33m Which Twitter Client would you like to install? \e[0m"
echo -e "\e[0;31m ELCI recommends Rainbow Stream \e[0m"
PS3='Choose your twitter client: '
Download=("Rainbow Stream" "Command-Line-Tweeter" "Skip" "Quit Installer")
select fav in "${Download[@]}"; do
    case $fav in
"Bottles")
            bash BottlesX.sh && break;;
"Virtualbox")
                bash VMOracleX.sh && break;;
"All")
bash BottlesX.sh && VMOracleX.sh && break;;
"Skip")
            break;;
"Quit Installer")
            echo "User requested exit"
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done



