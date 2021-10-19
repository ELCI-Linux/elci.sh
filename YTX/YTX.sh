#! /bin/bash/


chmod +x FreetubeX.sh Gydl.sh VideoDownloaderX.txt YouTubedl-gui.sh


echo -e "\e[0;31m FreeTube \e[0m" && echo "An Open Source YouTube app for privacy"
echo -e "\e[0;31m Gydl \e[0m" && echo "Download content from sites like YouTube"
echo -e "\e[0;31m Tubefeeder \e[0m" && echo "A Youtube-Client made for the Pinephone"
echo -e "\e[0;31m VideoDownloader \e[0m" && echo "Download videos from websites like YouTube and many others"
echo -e "\e[0;31m YouTubedl-gui \e[0m" && echo "A simple-to-use, cross-platform graphical interface for youtube-dl."
echo -e "\e[0;31m Tubi (ELCI Built) \e[0m" && echo "A terminal based video downloader built on youtube-dl"
sleep 1s
echo "Would you like to install a YouTube video downloader??"

PS3='Choose your YouTube download tool: '
tool=("Freetube" "Gydl" "Tubefeeder" "Video Downloader" "Tubi" "Quit")
select fav in "${tool[@]}"; do
    case $fav in
"FreeTube")
            bash FreeTubeX.sh;;
"Gydl")
            bash GydlX.sh;;
"Tubefeeder")
            bash TubefeederX.sh;;
"Video Downloader")
            bash VideoDownloaderX.sh;;
"YouTubedl-gui")
            bash YouTubedl-gui.sh;;
"Tubi")
            bash TubiXHelp.sh;;
"Quit")
            echo "User requested exit"
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done


