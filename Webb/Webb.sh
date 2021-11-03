#! /bin/bash/
echo -e "\e[0;35m Web Browsers allow users to surf the internet \e[0m"
echo -e "\e[0;31m ELCI recommend Brave Browser \e[0m"

PS3='Choose your Browser: '
Browser=("Brave" "Brave BETA" "Chrome"  "Epiphany" "Falkon" "Firefox" "Konqueror" "Links" "Midori" "Min" "Opera" "Pale Moon" "SlimJet" "Water Fox" "Vivaldi" "Skip" "Quit Installer")
select fav in "${Browser[@]}"; do
    case $fav in
"Brave")
        bash BraveXinstall.sh && break;;
"Brave BETA") 
	bash BraveBETAXinstall.sh && break;;
"Chrome")
	bash Google-ChromeX.sh && break;;
"Epiphany")
	sudo dnf install snapd
	sudo ln -s /var/lib/snapd/snap /snap
	sudo snap install epiphany && break;;
"Falkon")
.	sudo dnf install snapd
	sudo ln -s /var/lib/snapd/snap /snap
	sudo snap install falkon && break;;
"Firefox")
	sudo add-apt-repository ppa:mozillateam/firefox-next -yy
	sudo apt-get update -yy && sudo apt-get upgrade -yy
	sudo apt-get install firefox -yy && break;;
"Konqueror")
	sudo apt install konqueror -yy && break;;
"Links")
	sudo mkdir ./LinksInstallFiles || echo "Installer directory already exists"
	cd ./LinksInstallFiles &&
	wget http://links.twibright.com/download/links-2.23.tar.gz | tar -xf
	tar -xf links-2.23.tar.gz &&
	cd ./links-2.23 &&
sudo apt install build-essentials
sudo ./configure ; make ./Makefile &&
	sudo make install &&
	cd .. ; cd .. && rm -r ./LinksInstallFiles || echo "Sorry, it seems like there was an issue installing links" break;;

"Midori")
echo -e "\e[0;34m How would you like to install? \e[0m"
PS3='Pick your install method for midori'
Midori=("Flatpak" "Snap"  "Skip" "Quit Installer")
select fav in "${Midori[@]}"; do
    case $fav in
"Flatpak") flatpak install flathub org.midori_browser.Midori && break;;
"Snap")	sudo dnf install snapd &&
	sudo ln -s /var/lib/snapd/snap /snap
	sudo snap install midori  -yy && break;;
"Skip")
        break;;
"Quit Installer")
            echo "User requested exit"
            exit;;
        *) echo "invalid option $REPLY";;
    esac
done;;
"Min")
	wget -o Min.deb https://github.com/minbrowser/min/releases/download/v1.21.0/min_1.21.0_amd64.deb
	sudo dpkg -i min_1.21.0_amd64.deb && break;;
"Opera")
	sudo add-apt-repository 'deb https://deb.opera.com/opera-stable stable non-free'
	wget -qO - https://deb.opera.com/archive.key | sudo apt-key add -
	sudo apt-get update
	sudo apt-get install opera-stable && break;;
"Pale Moon")
	echo 'deb http://download.opensuse.org/repositories/home:/stevenpusser/Debian_10/ /' | sudo tee /etc/apt/sources.list.d/home:stevenpusser.list
	curl -fsSL https://download.opensuse.org/repositories/home:stevenpusser/Debian_10/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_stevenpusser.gpg > /dev/null
	sudo apt update 
	sudo apt install palemoon && break;;
"SlimJet")
	wget -o ./Slimjet.deb && https://www.slimjet.com/download.php?version=lnx64&type=deb&beta=&server=
	sudo dpkg -i Slimjet.deb && break;;
"Water Fox")
sudo mkdir ./WaterFoxInstall
cd ./WaterFoxInstall
	wget -o ./Waterfox.tar.bz2 https://cdn.waterfox.net/releases/linux64/installer/waterfox-G3.2.5.en-US.linux-x86_64.tar.bz2
	tar -xjf waterfox-G3.2.5.en-US.linux-x86_64.tar.bz2 && sudo mkdir ~/ELCI-Installs ; sudo cp -r ./waterfox ~/ELCI-Installs &&
 cd .. && rm -r ./WaterFoxInstall
 break;;

"Vivaldi")
	sudo apt-get install vivaldi && break;;
"Skip")
            break;;
"Quit Installer")
            echo "User requested exit"
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done


