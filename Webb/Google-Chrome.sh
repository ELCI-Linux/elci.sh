#! /bin/bash/

Google Chrome is a 


PS3=
ChromeInstallOption=("Rapid" "Detailed" "Download Installer Only" "None")
select fav in "${MobileSupport[@]}"; do
    case $fav in
        "Rapid")
            echo "Installing Chrome"&&
#download-extract into correct folder
 &&
cat ./BrowsersX/legal/ChromeTOS.txt
            ;;
        "Download Installer Only")
            echo "The installer and instructions will be saved in the elcirecs folder."
            # optionally call a function or run some code here
            ;;
        "Bot")
            echo "I want to install mobile tools for both ecosystems"
            bash AndroidX.sh &&
            bash AppleMobX.sh
            echo "Sorry Apple products are not supported yet, but Android support has been enabled"
            break
            ;;
        "None")
            echo "User requested exit"
           exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

