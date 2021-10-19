#! /bin/bash/



echo -e "\e[0;35m Twitter clients allow you to browse Twitter and tweet from your terminal \e[0m"
echo -e "\e[0;33m Which Twitter Client would you like to install? \e[0m"
echo -e "\e[0;31m ELCI recommends Rainbow Stream \e[0m"
PS3='Choose your twitter client: '
Strobe=("Cerebro" "uLauncher" "Skip" "Quit Installer")
select fav in "${Strobe[@]}"; do
    case $fav in
"Cerebro")
git clone https://github.com/KELiON/cerebro.git cerebro
cd cerebro && yarn &&
cd ./app && yarn &&
cd ../ && $ yarn run dev && break;;																																																																																																																																													"uLauncher")

"uLauncher")
bash uLauncherX.sh 
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

sudo apt --fix-broken install -yy
