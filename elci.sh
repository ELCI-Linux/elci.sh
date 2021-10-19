#! /bin/bash
#This installer was created by ELCI MEDIA UK
# Once the installer opens, a seriers of bash scripts are made executable.
#DEV - Custom neofetch logo. 

chmod +x elci.sh


# The user is then greated
echo -e  "\e[7;32m Welcome to ELCI Installer Utility \e[0m"
echo -e  "\e[0;34m Pre-install process running \e[0m"
#1
# As apt is the most commonly used Package manager on Debian Systems, apt repositories are updated
echo -e "\e[0;33m Running apt update and upgrades \e[0m"
sudo apt-get update
sudo apt-get upgrade

#support for the following:
sudo apt-get install guix  dnf zypper


sleep 0.5s
#2
#wget is used to download files
echo -e "\e[0;33m Installing wget \e[0m"
sudo apt-get install wget -yy

sleep o.5s
#3
# Flatpak is one of the primary install methods used by the installer
sudo apt-get install flatpak

sleep 0.5s
#4
#The profile generator is still in development.
echo -e  "\e[0;39m What is your name? \e[0m"
read name
echo -e "\e[0;38m Hello $name \e[0m" 


sleep 0.5s
#5
#neofetch allows users to monitor the size of their install as the go through the installer.
sudo apt-get install neofetch
sleep 0.5s
#6
# directory paths need to be remapped
#Flatpak and flathub.com are used to download and install applications, though this is automated through the installer.
echo -e "\e[0;33m Installing Flatpak \e[0m"
sudo apt install flatpak &&
neofetch | grep 'Packages' &&
sleep 5s
echo -e  "\e[0;38m $name, you can install software using \e[0m"

sleep 0.5s
# Portable Device Integration
#7
echo -e  "\e[7;32m =========Laptop Support========= \e[0m"
echo -e  "\e[7;32m --------------Lapi-------------- \e[0m"
echo -e  "\e[0;33m Lapi can guide you through installing laptop specific applications \e[0m"
echo -e  "\e[0;36m 	- Multi-Touch Support \e[0m"
echo -e  "\e[0;36m  	- Power Management \e[0m"
echo -e  "\e[0;36m 	- Touchscreen support (Coming Soon) \e[0m"
echo -e  "\e[0;36m	- Thin-Client Mode (Coming Soon) \e[0m"
echo -e  "\e[0;34m $name, Would you like to run Lapi? \e[0m" &&
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Ok, Running Lapi" &&
echo -e  "\e[0;33m Entering ToucheX \e[0m"
cd ./Lapi
echo "Running LapiX.sh"
bash LapiX.sh &&
echo -e  "\e[0;33m Lapi is finished \e[0m" &&
cd ..
echo -e  "\e[0;33m Moving on \e[0m"; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done


sleep 0.5s

echo -e  "\e[7;32m ========Audio Management========= \e[0m"
echo -e  "\e[7;32m -----------Audio Man------------- \e[0m"
echo -e  "\e[0;33m Would you like AudioMan to help you install system-wide audio tools? e.g. Volume Control, audio routing \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) cd ./AudioMan &&
chmod +x AudioMan.sh &&
bash AudioMan.sh &&
 cd .. && break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done




echo -e  "\e[7;32m ========Web Browsers========= \e[0m"
echo -e  "\e[7;32m ----------Webb--------------- \e[0m"

echo -e "\e[0;35m Webb can guide you through installing a variety of Browsers \e[0m"

echo -e  "\e[0;33m Would you like to install Web Browsers? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) cd ./BrowsersX &&
chmod +x BrowsersX.sh &&
bash BrowsersX.sh &&
 cd .. && break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
echo -e  "\e[7;32m =========Text Editors========= \e[0m"
echo -e  "\e[7;32m -----------Tex---------------- \e[0m"

echo -e "\e[0;33m Would you like to install Text Editors  using Tex? \e[0m"
    esac
done






#
echo -e  "\e[7;32m =========Calculators and Math Software========= \e[0m"
echo -e  "\e[7;32m ------------------Euclid----------------------- \e[0m"
echo -e  "\e[7;32m =========Text Editors========= \e[0m"
echo -e  "\e[7;32m -----------Tex---------------- \e[0m"

echo -e "\e[0;33m Would you like to install Text Editors  using Tex? \e[0m"

echo -e "\e[0;35m Euclid  can guide you through installing a variety of Calcultors and Graphing Tools \e[0m"

sleep 0.2s
echo -e  "\e[0;33m Would you like to use Euclid to install Calculators? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) cd ./Euclid &&
chmod +x Euclid.sh &&
bash Euclid.sh &&
 cd .. && break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done


# (Digital Audio Workstations - DAWX)
#8
echo -e  "\e[7;32m =========Digital Audio Workstations and tools========= \e[0m"
echo -e  "\e[7;32m ----------------------DAWX---------------------------- \e[0m"

echo -e "\e[0;35m DAWX can guide you through installing a variety of Digital Audio Workstations  \e[0m"
sleep 0.2s
echo -e "\e[0;35m DAWX also includes a selection of other audio production tools \e[0m"
sleep 0.2s
echo -e  "\e[0;33m Would you like to install DAWs and other audio production tools? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) cd ./DAWX &&
chmod +x DAWX.sh &&
bash DAWX.sh &&
 cd .. && break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done
sleep 0.5s
# Emulation tools should only be used for appopriately licensed games and software.
#9
echo -e  "\e[7;32m =========Video Game Console Emulation========= \e[0m"
echo -e  "\e[7;32m --------------EmulatorsX--------------- \e[0m"
echo -e  "\e[0;35m Console Emulators will allow you to play console video games on this device \e[0m"
echo -e "\e[0;34m Systems with emulation support include: \e[0m"
echo -e "\e[0;36m 	- Sony: PS1, PS2, PS3 and PSP \e[0m"
echo -e "\e[0;36m 	- Nintendo: N64, GameCube, Wii and Nintendo Switch \e[0m"
echo -e "\e[0;31m EMULATION TOOLS SHOULD ONLY BE USED IN WITH APPROPRIATE LICENSING \e[0m"
echo -e  "\e[0;34m $name, Would you like to install console emulators? \e[0m" &&
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "GAME ON!" &&
cd ./GameX
echo "Installing Emulators"
bash EmulatorsX.sh &&
echo -e  "\e[0;33m Emulator Installer Finished \e[0m"
echo -e  "\e[0;33m Moving on \e[0m"
cd ..; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done

sleep 0.5s
pwd
#10
#IP Table Firewall (Rules from github.com/ChrisTitusTech)

echo -e  "\e[7;32m =========Firewall========= \e[0m"
echo -e  "\e[7;32m ---------Security--------- \e[0m"


echo -e "\e[0;35m An IP table Firewall can help protect your system and/or network from malicious attacks \e[0m"
echo -e "\e[0;36m The firewall can be manually editted and does not require anti-virus to be deployed \e[0m"
echo -e  "\e[0;33m Would you like to install a Firewall using IP Tables? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes )
echo -e  "\e[0;33m Installing IPTable Firewall \e[0m" &&
cd ./Security &&
bash IPFirewallX.sh &&
cd ..; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;;
    esac
done

sleep 0.5s


echo -e  "\e[7;32m =========Window Launchers========= \e[0m"
echo -e  "\e[7;32m --------------Strobe-------------- \e[0m"


echo -e  "\e[0;34m ulauncher is a system-wide search tool similar to Spotlight on Mac OS \e[0m" &&
echo -e "\e[0;33m Would you like to install uLauncher? \e{0m" &&
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Ok, installing ulauncher!" &&
echo -e  "\e[0;33m Running StrobeX \e[0m"
cd ./Strobe && bash StrobeX.sh && cd ..
echo -e  "\e[0;33m StrobeX closed \e[0m" &&
echo -e  "\e[0;33m Moving on \e[0m"; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done



#11
#MOBSUP (Celli) + ADD IFUSEÂ
echo -e  "\e[7;32m =========Mobile Device Support========= \e[0m"
echo -e  "\e[7;32m -----------------Celli----------------- \e[0m"
echo -e "\e[0;35m The mobile support suite includes apps to help users interact with mobile devices. \e[0m"
echo -e "\e[0:30m WARNING: iOS and iPad OS Devices are not yet supporteds. \e[0m"

echo -e "\e[0;34m Would you like to install mobile support software \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo -e  "\e[0;33m Opening Mobile Support Installer \e[0m" && cd ./elcirecs/MobSupX
cd ./MobSup bash MobSupX.sh; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;;
    esac
done


sleep 0.5s
#12
#Music Players

echo -e  "\e[7;32m =========Music Players========= \e[0m"
echo -e  "\e[7;32m ------------Harmony------------ \e[0m"
echo -e  "\e[0;33m $name, would you like to install Music Players? \e[0m" &&
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Boom!"
echo "Using Flatpak and Apt to Install Music Apps"
cd ./MusicX && bash MusicX.sh && neofetch | grep 'Packages' && cd ..; break;;
        No ) echo -e "\e[0;33m Ok, moving on \e[0m" && break;;
    esac
done

sleep 0.5s

#RGB Control


echo -e  "\e[0;32/5m =========OpenRGB========= \e[0m"

echo -e  "\e[5;31m -R- \e[0m"  "\e[5;32m -G- \e[0m" "\e[5;34m -B- \e[0m"


echo -e  "\e[0;33m $name, would you like to install openRGB to control RGB lighting? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) bash openRGB.sh && break;;
        No ) echo -e "\e[0;33m Ok, moving on \e[0m" && break;;
    esac
done

#Secure-linux

echo -e  "\e[7;32m =========Secure-linux========= \e[0m"
echo -e  "\e[7;32m -------------by CTT----------- \e[0m"

echo -e "\e[0;33m Secure-linux can help protect your device from bruteforce attacks \e[0m"
echo -e "\e[0;33m Would you like to run Secure-linux? \e[0m"

select yn in "Yes" "No"; do
	case $yn in
	Yes) bash CTT-secure.sh && break;;
	No) break;;
esac
done

#TEXT EDITORS - ANTI-Loop needed + fixes
echo -e  "\e[7;32m =========Text Editors========= \e[0m"
echo -e  "\e[7;32m -----------Tex---------------- \e[0m"

echo -e "\e[0;33m Would you like to install Text Editors  using Tex? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo -e  "\e[0;33m Starting Tex \e[0m"
cd ./Tex && bash Tex.sh  && cd ..; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;;
    esac
done





#13
#TERMEMU
echo -e  "\e[7;32m =========Terminal Emulators and Terminal Tools========= \e[0m"
echo -e  "\e[7;32m -----------------------TermEmu------------------------- \e[0m"
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

echo -e "\e[0;33m Would you like to install Terminal Emulators using TermEmu? \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo -e  "\e[0;33m Installing Terminal Emulators \e[0m"
cd ./TermEmu && bash TermEmuX.sh && neofetch && cd ..; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;;
    esac
done

sleep 0.5s
#14
#VIDCONF - MIGRATE TELEGRAM AND REFORM
echo -e  "\e[7;32m =========Video Conferancing========= \e[0m"
echo -e  "\e[7;32m --------------VidConf--------------- \e[0m"

echo -e "\e[0;35m VidConf will guide you through installing a wide range of video calling and conferancing apps  \e[0m"

echo -e "\e[0;35m Conferancing software  includes Skype, Telegram, Teams and Zoom  \e[0m"
echo -e "\e[0;34m Would you like to install video calling and conferancing Software? \e[0m" &&
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo -e "\e[0;33m Installing Communication Tools \e[0m" &&
cd ./VIDCONF && bash VIDCONFX.sh & cd ..; break;;
        No ) echo -e "\e[0;33m Ok, moving on \e[0m" && break;;
    esac
done



sleep 0.5s
#15
#Video Editing
echo -e  "\e[7;32m =========Video Editing========= \e[0m"
echo -e  "\e[7;32m ------------VidEdit------------ \e[0m"

echo -e "\e[0;35m VidConf will guide you through installing a wide range of video calling and conferancing apps  \e[0m"


select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo -e "\e[0;33m Installing Video Editors \e[0m" &&
cd ./VidEdit && bash VidEditX.sh & cd ..; break;;
        No ) echo -e "\e[0;33m Ok, moving on \e[0m" && break;;
    esac
done


sleep 0.5s
#16
#Virtualisation
echo -e  "\e[7;32m =========Virtualisation====== \e[0m"
sleep 0.2s
echo -e  "\e[7;32m -------------VMX------------- \e[0m"
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
        Yes ) echo -e  "\e[0;33m Installing Virtual Machine Software \e[0m"
cd ./VMX && bash VMX.sh && neofetch | grep 'Packages' && cd ..; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;;
    esac
done



sleep 0.5s
#17
#Windows Applicaton Support
echo -e  "\e[7;32m ======Windows Application Support======  \e[0m"

echo -e  "\e[0;33m Some Windows Applications can be run on Linux without using a Virtual Machine \e[0m"

echo -e "\e[0;35m WX can guide you through installing the programs that allow you to do this  \e[0m"
echo -e  "\e[0;34m $name, Would you like to install Windows Application Support? \e[0m" &&
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Ok, installing Windows Application Support." &&
echo "Running WX.sh"
cd ./exe bash WX.sh &&
bash BottlesX.sh &&
PheonX.sh &&
cd ..
echo -e  "\e[0;33m WX.sh Done \e[0m"
echo -e  "\e[0;33m Moving on \e[0m"; break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done
exit



echo cat ./BrowsersX/legal/ChromeTOS.txt

sleep 0.5s
echo "$name,Thank you for using the ELCI installer"



