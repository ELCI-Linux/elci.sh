#! bin/bash
chmod +x MobSupX.sh
echo -e "\e[0;35m $name to Mobile Support Installer \e[0m"
echo -e "\e[0;33m Select the operating system installed on your mobile device \e[0m"

PS3=
MobileSupport=("Android" "Apple" "Both" "None")
select fav in "${MobileSupport[@]}"; do
    case $fav in
        "Android")
            echo "I would like to install tools for Android support" &&
cd ./AndroidX &&
bash AndroidX.sh &&
cd.. && cd..
echo "Android tools installed"
            ;;
        "Apple")
            echo "I would like to install tools for iOS and iPad OS support."
cd ./AppleX && bash AppleMobX.sh && cd .. && cd..
	    ;;
        "Both")
            echo "I want to install mobile tools for both ecosystems"
            cd ./ Android && bash AndroidX.sh && cd.. && cd./AppleX && bash ifuseX.sh && cd .. && cd .. & break;;
	    echo "Sorry Apple products are not supported yet, but Android support has been enabled" && break;;
        "None")
            echo "User requested exit"
           exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

