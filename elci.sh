#! /bin/bash
#This installer was created by ELCI MEDIA UK
# Once the installer opens, a seriers of bash scripts are made executable.
#DEV - Custom neofetch logo. 


#ADDITIONS TO MAKE
#ADD VMM to VM






chmod +x elci.sh

#removing bloatware
sudo apt-get remove firefox geary gnome-music -yy


# The user is then greated
echo -e  "\e[7;33m Welcome to ELCI Installer Utility \e[0m"
echo -e  "\e[0;34m Pre-install process running \e[0m"


echo -e "\e[7;35m Before we proceed would you like to see the installer guide? \e[0m"
select yn in "Yes" "No"; do
case $yn in
Yes) bash installerguide.sh && break;;
No) break;;
esac
done


#1
# As apt is the most commonly used Package manager on Debian Systems, apt repositories are updated
echo -e "\e[0;33m Running apt update and upgrades, please wait... \e[0m"
sudo apt-get update -yy &> /dev/null; sudo apt-get upgrade -yy &> /dev/null
sudo apt-get --fix-broken install
echo -e "\e[7;33m sudo apt-get update and sudo apt-get upgrade completed \e[0m"
#support for the following:
echo -e "\e[0;33m Installing the following software:\e[0m"
sleep 0.2s
echo -e "\e[0;33m - dnf \e[0m"
sleep 0.2s
echo -e "\e[0;33m - flatpak install \e[0m"
sleep 0.2s
echo -e "\e[0;33m - guix\e[0m"
sleep 0.2s
echo -e "\e[0;33m - snapd \e[0m"
sleep 0.2s
echo -e "\e[0;33m - rustc \e[0m"
sleep 0.2s
echo -e "\e[0;33m - wget \e[0m"
sleep 0.2s
echo -e "\e[0;33m - zypper \e[0m"
sudo apt-get install guix dnf zypper wget flatpak snap snapd rustc -yy &> /dev/null
echo "Installing Rubygems"
sudo apt install ruby-rubygems

#xdotool
pwd
sudo apt-get install xdotool -yy
sudo apt-get install xclip -yy

#The profile generator is still in development.
echo -e  "\e[0;39m What is your name? \e[0m" && read name
echo -e "\e[0;38m Hello $name \e[0m" 



echo -e  "\e[0;38m $name, you can install software using \e[0m"
sleep 0.5s
# Portable Device Integration
#7
echo -e  "\e[7;33m =========Laptop Support========= \e[0m"
echo -e  "\e[7;33m --------------Lapi-------------- \e[0m"
echo -e  "\e[7;36m Lapi can guide you through installing laptop specific applications \e[0m"
echo -e  "\e[0;36m 	- Multi-Touch Support \e[0m"
echo -e  "\e[0;36m  	- Power Management \e[0m"
echo -e  "\e[0;36m 	- Touchscreen support (Coming Soon) \e[0m"
echo -e  "\e[0;36m	- Thin-Client Mode (Coming Soon) \e[0m"
echo -e  "\e[7;34m $name, Would you like to run Lapi? \e[0m" &&
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo -e "\e[7;36m Navigating to Lapi \e[0m" ;
cd ./Lapi ;
echo -e "\e[7;36m Running Lapi \e[0m" ; bash LapiX.sh &&
echo -e  "\e[0;33m Lapi is finished \e[0m" &&
cd ..
echo -e  "\e[0;33m Moving on \e[0m"; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done
pwd
#PushStart
#PushStart allows users to automate the running of certain programs at launch.




sleep 0.5s

echo -e  "\e[7;33m ========Audio Management========= \e[0m"
echo -e  "\e[7;33m -----------Audio Man------------- \e[0m"


echo -e "\e[7;36m AudioMan is an installer utility that allows user to install: \e[0m"

echo -e  "\e[0;36m      - ALSA \e[0m"
echo -e  "\e[0;36m      - JACK \e[0m"
echo -e  "\e[0;36m      - Powerwire \e[0m"
echo -e  "\e[0;36m      - PulseAudio \e[0m"

echo -e  "\e[7;34m Would you like AudioMan to help you install system-wide audio tools? e.g. Volume Control, audio routing \e[0m"
select yn in "Yes" "No"; do

    case $yn in
        Yes ) cd ./AudioMan &&
chmod +x AudioMan.sh &&
bash AudioMan.sh &&
 cd .. && AMRS="R" && break;;
        No ) echo -e  "\e[7;33m Ok, moving on \e[0m" && AMRS="DR" && break;
    esac
done

pwd


echo -e  "\e[7;33m ========Web Browsers========= \e[0m"
echo -e  "\e[7;33m ----------Webb--------------- \e[0m"

echo -e "\e[7;36m Webb can guide you through installing 14 popular web browsers \e[0m"

echo -e  "\e[7;34m Would you like to install Web Browsers? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) cd ./Webb &&
chmod +x Webb.sh &&
bash Webb.sh &&
 cd .. && break;;
        No ) echo -e  "\e[7;33m Ok, moving on \e[0m" && break;
    esac
done
pwd
echo -e  "\e[7;33m =========Calculators and Math Software========= \e[0m"
echo -e  "\e[7;33m ------------------Euclid----------------------- \e[0m"
echo -e "\e[7;35m Euclid  can guide you through installing a variety of Calcultors and Graphing Tools \e[0m"

sleep 0.2s
echo -e  "\e[7;34m Would you like to use Euclid to install Calculators? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) cd ./Euclid &&
chmod +x Euclid.sh &&
bash Euclid.sh ; cd .. && break;;
        No ) echo -e  "\e[7;33m Ok, moving on \e[0m" && break;
    esac
done
pwd
echo -e  "\e[7;33m =========Crypto Trackers and Wallets========= \e[0m"
echo -e  "\e[7;33m ------------------Sam----------------------- \e[0m"
echo -e "\e[7;35m Euclid  can guide you through installing a variety of Calcultors and Graphing Tools \e[0m"

sleep 0.2s
echo -e  "\e[7;34m Would you like to use Sam to install Crypto Applications? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) cd ./Sam &&
chmod +x crypto.sh &&
bash crypto.sh ; cd .. && break;;
        No ) echo -e  "\e[7;33m Ok, moving on \e[0m" && break;;
    esac
done

# (Digital Audio Workstations - DAWX)
# Needs audioman reminder
echo -e  "\e[7;33m =========Digital Audio Workstations and tools========= \e[0m"
echo -e  "\e[7;33m ----------------------DAWX---------------------------- \e[0m"

echo -e "\e[0;36m DAWX can guide you through installing a variety of Digital Audio Workstations  \e[0m"
sleep 0.2s

echo -e "\e[0;35m - Ardour  \e[0m"
sleep 0.2s
echo -e "\e[0;35m - Bitwig Studio \e[0m"
sleep 0.2s

echo -e "\e[0;35m - Fami  \e[0m"
sleep 0.2s

echo -e "\e[0;35m -  \e[0m"
sleep 0.2s

echo -e  "\e[7;34m Would you like to install DAWs and other audio production tools? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) cd ./DAWX ; chmod +x DAWX.sh && bash DAWX.sh ; cd ..
if [ $AMRS="DR" ]; then
echo "It is recommended that you run AudioMan"
cd ./AudioMan; chmod u+x AudioMan.sh ; bash AudioMan.sh ; cd..
fi
 break;;
        No ) echo -e  "\e[7;33m Ok, moving on \e[0m" && break;
    esac
done
pwd
sleep 0.5s
# Emulation tools should only be used for appopriately licensed games and software.
#9
echo -e  "\e[7;33m =========Video Game Console Emulation========= \e[0m"
echo -e  "\e[7;33m -------------------Paddy---------------------- \e[0m"
echo -e  "\e[0;35m Console Emulators will allow you to play console video games on this device \e[0m"
echo -e "\e[7;36m Emulate: \e[0m"
echo -e "\e[0;36m 	Sony - PS1, PS2, PS3 and PSP \e[0m"
echo -e "\e[0;36m 	Nintendo - N64, GameCube, Wii and Nintendo Switch \e[0m"
echo -e "\e[7;31m EMULATION TOOLS SHOULD ONLY BE USED IN WITH APPROPRIATE LICENSING \e[0m"
echo -e  "\e[7;34m $name, Would you like to install console emulators? \e[0m" &&
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "GAME ON!" &&
cd ./Paddy
echo "Installing Retro Console Emulators"
bash Paddy.sh &&
echo -e  "\e[0;33m Emulator Installer Finished \e[0m"
echo -e  "\e[0;33m Moving on \e[0m"
cd ..; break;;
        No ) echo -e  "\e[7;33m Ok, moving on \e[0m" && break;
    esac
done
pwd
#Note Taking
#NEEDS FURTHER POPULATION
echo -e  "\e[7;33m =========Notes========= \e[0m"
echo -e  "\e[7;33m ---------Scribe--------- \e[0m"
select yn in "Yes" "No"; do
case $yn in
Yes) cd ./Scribe ; bash JoplinX.sh && cd .. && break;;
No) break;;
esac
done
pwd

sleep 0.5s


echo -e  "\e[7;33m =========Screen Recording========= \e[0m"
echo -e  "\e[7;33m --------------Cressida-------------- \e[0m"


echo -e  "\e[0;34m Screen Recording  \e[0m" &&
echo -e "\e[7;33m Would you like to install Screen Records? \e{0m" &&
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Ok, opening Cressida" &&
echo -e  "\e[7;33m Running Cressida \e[0m"
cd ./Cressida && bash Cressida.sh && cd ..
echo -e  "\e[7;33m Cressida closed \e[0m" &&
echo -e  "\e[7;33m Moving on \e[0m"; break;;
        No ) echo -e  "\e[7;33m Ok, moving on \e[0m" && break;
    esac
done

echo -e  "\e[7;33m =========Search Tools========= \e[0m"
echo -e  "\e[7;33m --------------Strobe-------------- \e[0m"


echo -e  "\e[0;34m Search launcher tools are similar to Spotlight on Mac OS \e[0m" &&
echo -e "\e[7;33m Would you like to install a Search Launcher? \e{0m" &&
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Ok, opening Strobe!" &&
echo -e  "\e[7;33m Running StrobeX \e[0m"
cd ./Strobe && bash StrobeX.sh && cd ..
echo -e  "\e[7;33m StrobeX closed \e[0m" &&
echo -e  "\e[7;33m Moving on \e[0m"; break;;
        No ) echo -e  "\e[7;33m Ok, moving on \e[0m" && break;
    esac
done

pwd

#11
#MOBSUP (Celli) + ADD IFUSEÂ
echo -e  "\e[7;33m =========Mobile Device Support========= \e[0m"
echo -e  "\e[7;33m -----------------Celli----------------- \e[0m"
echo -e "\e[0;35m The mobile support suite includes apps to help users interact with mobile devices. \e[0m"
echo -e "\e[0:30m WARNING: iOS and iPad OS Devices are not yet supporteds. \e[0m"

echo -e "\e[0;34m Would you like to install mobile support software \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo -e  "\e[7;33m Opening Mobile Support Installer \e[0m" &&
cd ./Celli && bash MobSupX.sh ; break;;
        No ) echo -e  "\e[7;33m Ok, moving on \e[0m" && break;;
    esac
done

pwd
sleep 0.5s
#12
#Music Players

echo -e  "\e[7;33m =========Music Players========= \e[0m"
echo -e  "\e[7;33m ------------Harmony------------ \e[0m"
echo -e  "\e[7;33m $name, would you like to install Music Players? \e[0m" &&
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Boom!"
echo "Using Flatpak and Apt to Install Music Apps"
cd ./Harmony && bash Harmony.sh && cd .. ; break;;
        No ) echo -e "\e[7;33m Ok, moving on \e[0m" && break;;
    esac
done

sleep 0.5s
pwd
#RGB Control


echo -e  "\e[0;32/5m =========OpenRGB========= \e[0m"

echo -e  "\e[5;31m -R- \e[0m"  "\e[5;32m -G- \e[0m" "\e[5;34m -B- \e[0m"


echo -e  "\e[7;33m $name, would you like to install openRGB to control RGB lighting? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) bash openRGB.sh && break;;
        No ) echo -e "\e[7;33m Ok, moving on \e[0m" && break;;
    esac
done
pwd
#Secure-linux

echo -e  "\e[7;33m =========Secure-linux/IPFirewall========= \e[0m"
echo -e  "\e[7;33m -------------by CTT----------- \e[0m"

echo -e "\e[7;33m Secure-linux can help protect your device from bruteforce attacks \e[0m"
echo -e "\e[7;33m Would you like to run Secure-linux? \e[0m"

select yn in "Yes" "No"; do
	case $yn in
	Yes) cd ./Bouncer && bash CTTSec.sh && break;;
	No) break;;
esac
done
pwd
#TEXT EDITORS - ANTI-Loop needed + fixes
echo -e  "\e[7;33m =========Text Editors========= \e[0m"
echo -e  "\e[7;33m -----------Tex---------------- \e[0m"

echo -e "\e[7;33m Would you like to install Text Editors  using Tex? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo -e  "\e[7;33m Starting Tex \e[0m"
cd ./Tex && bash Tex.sh  && cd ..; break;;
        No ) echo -e  "\e[7;33m Ok, moving on \e[0m" && break;;
    esac
done

pwd



#13
#TERMEMU
echo -e  "\e[7;33m =========Terminal Emulators and Terminal Tools========= \e[0m"
echo -e  "\e[7;33m -----------------------TermEmu------------------------- \e[0m"
echo -e "\e[0;35m TermEmu can guide you through installing terminal emulators and other terminal based applications. \e[0m"
echo -e "\e[0;36m 	- Crypto Trackers \e[0m"
sleep 0.2s
echo -e "\e[0;36m 	- Music Players \e[0m"
sleep 0.2s
echo -e "\e[0;36m 	- Terminal Emulators \e[0m"
sleep 0.2s
echo -e "\e[0;36m 	- Local Area Network Messaging \e[0m"
sleep 0.2s
echo -e "\e[0;36m	- File Managers \e[0m"
sleep 0.3s

echo -e "\e[7;33m Would you like to install Terminal Emulators using TermEmu? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo -e  "\e[7;33m Installing Terminal Emulators \e[0m"
cd ./TermEmu && bash TermEmuX.sh && cd ..; break;;
        No ) echo -e  "\e[7;33m Ok, moving on \e[0m" && break;;
    esac
done
pwd
sleep 0.5s
#TICKR

echo -e  "\e[7;33m ========News Ticker========= \e[0m"
echo -e  "\e[7;33m ----------by TICKR----------- \e[0m"

echo -e "\e[7;36m TICKR is an RSS-based News Ticker Application \e[0m"

echo -e  "\e[7;34m Would you like to install TCKR? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) cd ./Stylist &&
chmod +x TICKR.sh &&
bash TICKR.sh &&
 cd .. && break;;
        No ) echo -e  "\e[7;33m Ok, moving on \e[0m" && break;
    esac
done
pwd

#14
#VIDCONF - MIGRATE TELEGRAM AND REFORM
echo -e  "\e[7;33m =========Video Conferancing========= \e[0m"
echo -e  "\e[7;33m --------------VidConf--------------- \e[0m"

echo -e "\e[0;35m VidConf will guide you through installing a wide range of video calling and conferancing apps  \e[0m"

echo -e "\e[0;35m Conferancing software  includes Skype, Telegram, Teams and Zoom  \e[0m"
echo -e "\e[0;34m Would you like to install video calling and conferancing Software? \e[0m" &&
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo -e "\e[7;33m Installing Communication Tools \e[0m" &&
cd ./VIDCONF && bash VIDCONFX.sh & cd ..; break;;
        No ) echo -e "\e[7;33m Ok, moving on \e[0m" && break;;
    esac
done

pwd

sleep 0.5s
#15
#Video Editing
echo -e  "\e[7;33m =========Video Editing========= \e[0m"
echo -e  "\e[7;33m ------------VidEdit------------ \e[0m"

echo -e "\e[0;35m VidConf will guide you through installing a wide range of video calling and conferancing apps  \e[0m"


select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo -e "\e[7;33m Installing Video Editors \e[0m" &&
cd ./VidEdit && bash VidEditX.sh & cd ..; break;;
        No ) echo -e "\e[7;33m Ok, moving on \e[0m" && break;;
    esac
done

pwd
sleep 0.5s
#16
#Virtualisation
echo -e  "\e[7;33m =========Virtualisation====== \e[0m"
sleep 0.2s
echo -e  "\e[7;33m -------------VMX------------- \e[0m"
sleep 0.3s
echo -e "\e[0;35m VMX will guide you through installing Virtualisation Tools \e[0m"
echo -e "\e[0;31m Including:  \e[0m"
sleep 0.1s
echo -e "\e[0;36m	- VirtualBox \e[0m"
sleep 0.2s
echo -e "\e[0;36m	- Boxes \e[0m"
sleep 0.2
echo -e "\e[0;35m Would you like to install Virtualization Tools? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo -e  "\e[7;33m Installing Virtual Machine Software \e[0m"
cd ./VMX && bash VMX.sh && cd ..; break;;
        No ) echo -e  "\e[7;33m Ok, moving on \e[0m" && break;;
    esac
done
pwd


sleep 0.5s
#17
#Windows Applicaton Support


echo -e  "\e[7;33m ========Apk Support========= \e[0m"
echo -e  "\e[7;33m ----------Andrew--------------- \e[0m"

echo -e "\e[7;36m Andrew can install software needed to run apk files \e[0m"

echo -e  "\e[7;34m Would you like to run Andrew? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) cd ./Andrew &&
chmod +x Andrew.sh &&
bash Andrew.sh &&
 cd .. && break;;
        No ) echo -e  "\e[7;33m Ok, moving on \e[0m" && break;
    esac
done
pwd

echo -e  "\e[7;33m ======Windows Application Support======  \e[0m"

echo -e  "\e[7;33m Some Windows Applications can be run on Linux without using a Virtual Machine \e[0m"

echo -e "\e[0;35m WX can guide you through installing the programs that allow you to do this  \e[0m"
echo -e  "\e[7;34m $name, Would you like to install Windows Application Support? \e[0m" &&
select yn in "Yes" "No"; do
    case $yn in
        Yes )
echo -e "\e[7;35m Navigating to WX directory \e[0m"

echo -e "\e[7;33m cd ./WX \e[0m" &&
cd ./exe
 bash WX.sh &&
bash BottlesX.sh &&
PheonX.sh &&
cd ..
echo -e  "\e[7;33m WX.sh Done \e[0m"
echo -e  "\e[7;34m Moving on \e[0m"; break;;
        No ) echo -e  "\e[7;34m Ok, moving on \e[0m" && break;
    esac
done
exit
pwd


echo cat ./BrowsersX/legal/ChromeTOS.txt

sleep 0.5s
echo "$name,Thank you for using the ELCI installer"



