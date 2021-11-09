#! /bin/bash
ubos=$(lsb_release -r)
ubver=$(lsb_release -r | cut -f2)

select yn in "Yes" "No"; do

#macos - By ChrisTitusTech
sudo apt install git gnome-shell-extensions chrome-gnome-shell gnome-tweak-tool -y
git clone https://github.com/ChrisTitusTech/Linux-MacOS-GNOME.git ~/MacOS
mkdir ~/.themes
mkdir ~/.icons
mv ~/MacOS/themes/* ~/.themes
mv ~/MacOS/icons/* ~/.icons
sudo mv ~/MacOS/walls/* /usr/share/backgrounds/
#------GNOME Settings
gsettings set org.gnome.mutter center-new-windows 'true'
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'
gsettings set org.gnome.desktop.interface gtk-theme "WhiteSur-dark"
gsettings set org.gnome.desktop.wm.preferences theme "WhiteSur-dark"
gsettings set org.gnome.desktop.interface icon-theme 'BigSur'
gsettings set org.gnome.desktop.interface cursor-theme 'capitaine-cursors-light'
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/macOS-BS3.jpg'
gsettings get org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/macOS-BS1.jpg'
#-------Albert Search and Cairo Dock
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
sudo apt update
sudo apt install albert cairo-dock cairo-dock-plug-ins -y



echo -e "\e[7;38m Would you like to install icon packs? \e[0m"
	PS3='Select your icon packs:'
	icons=("Arc" "Boston" "Breeze-Chamelon" "Elementary" "Evolvere" "Faenza" "Flat Remix" "gnome-colors" "Human Minimal"  "kora"  "La Capitaine" "Mojave CT Icons" "Moka" "Nitrux"  "Oranchelo" "Paper" "Papirus" "Shadow"  "Numix Circle" "Vivacious-Colors" "White Sur"  "Xenlism"  "Zafiro")
	select fav in "{$icons[@]}"; do
	case $fav in
	"Arc")
		sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
		sudo apt-get update && sudo apt-get install arc-theme
		wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key
		sudo apt-key add - < Release.key
		break;;

	"Boston") 	git clone https://github.com/heychrisd/Boston-Icons
			sudo mv -r  ./Boston-Icons /usr/share/icons
			break;;
	"Breeze-Chamelon")
			git clone https://github.com/L4ki/Breeze-Chameleon-Icons
			sudo mv -r ./Breeze-Chameleon-Icons /usr/share/icons
			break;;
	"Elementary") 	sudo add-apt-repository ppa:elementary-os/stable -yy
			sudo apt-get update
			sudo apt-get install elementary-icon-theme
			break;;
	 "Evolvere") 	git clone https://github.com/franksouza183/Evolvere-Icons
			sudo mv -r ./Evolvere-Icons /usr/share/icons
			break;;
	 "Faenza") 
			git clone https://github.com/shlinux/faenza-icon-theme
			sudo mv -r ./faenza-icon-theme /usr/share/icons
			break;;
	"Flat Remix")
			git clone https://github.com/daniruiz/flat-remix
			sudo mv -r ./flat-remix /usr/share/icons
			break;;
	 "gnome-colors")
			https://github.com/gnome-colors/gnome-colors
			sudo mv -r ./gnome-colors /usr/share/icons
			break;;
	 "Human Minimal") break;;
		 "kora")
			git clone https://github.com/bikass/kora
			sudo mv -r ./kora /usr/share/icons
			break;;
	"La Capitaine") 
			git clone https://github.com/keeferrourke/la-capitaine-icon-theme
			sudo mv -r ./la-capitaine-icon-theme /usr/share/icons
			break;;
	"Mojave CT Icons") 
			git clone https://github.com/zayronxio/Mojave-CT
			sudo mv -r ./Mojave-CT /usr/share/icons
			break;;
	"Moka")
			git clone https://github.com/snwh/moka-icon-theme
			sudo mv -r ./moka-icon-theme /usr/share/icons
			break;;
	"Nitrux")
			git clone https://github.com/Nitrux
			sudo mv -r ./Nitrux /usr/share/icons
			break;;
	"Oranchelo")
			git clone https://github.com/OrancheloTeam/oranchelo-icon-theme
			sudo mv -r ./oranchelo-icon-theme /usr/share/icons
			break;;
	"Paper")
			git clone https://github.com/snwh/paper-icon-theme
			sudo mv -r ./paper-icon-theme /usr/share/icons
			break;;
	"Papirus")
	sudo sh -c "echo 'deb http://ppa.launchpad.net/papirus/papirus/ubuntu focal main' > /etc/apt/sources.list.d/papirus-ppa.list"
	sudo apt-get install dirmngr
	sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com E58A9D36647CAE7F
	sudo apt-get update
	sudo apt-get install papirus-icon-theme
	wget -qO- https://git.io/papirus-icon-theme-install | sh
	wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.icons" sh
	wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.local/share/icons" sh

		select yn in "Yes" "No"; do
		case $yn in
		Yes)
		PS3='Select your install method for LibreOffice Papirus Theme:'
		PapTBMeth=("apt" ".deb" "Skip" "Quit Installer"
		select fav in "{PapTBMeth[@]"
		bash install.sh
		case $fav in
		"apt")
			sudo add-apt-repository ppa:papirus/papirus
			sudo apt-get update
			sudo apt-get install libreoffice-style-papirus -yy
			break;;

		".deb")
		os=$(lsb_release -r | cut -f2)
		echo $os
		if [ "$os" == '21.10' ]; then
		wget https://launchpad.net/~papirus/+archive/ubuntu/papirus/+files/papirus-icon-theme_20211101-5562+pkg22~ubuntu21.10.1_all.deb | dpkg -i
		elif [ "$os" == '21.04' ]; then
		wget https://launchpad.net/~papirus/+archive/ubuntu/papirus/+files/papirus-icon-theme_20211101-5562+pkg22~ubuntu21.04.1_all.deb
		elif [ "$os" == '20.04' ]; then
		wget https://launchpad.net/~papirus/+archive/ubuntu/papirus/+files/papirus-icon-theme_20211101-5562+pkg22~ubuntu20.04.1_all.deb
		else
		echo "Sorry your operating system does not seem to be supported by the software
			and/or the installer"
		fi
		break;;
		esac
		done

		echo -e "\e[7;33m Would you like to install Papirus icons for Thunderbird? \e[0m"
		select yn in "Yes" "No"; do
		case $yn in
		Yes)
			PS3='Select your install method for Thunderbird Papirus Theme:' PapTBMeth=("bash" "flatpak" "Skip" "Quit Installer" select fav i n 
			"{PapTBMeth[@]"; do case $fav in "bash")
			 	git clone https://github.com/PapirusDevelopmentTeam/thunderbird-theme-papirus
				cd ./thunderbird-theme-papirus
				cd ./scripts
				bash install.sh
			break;;
			"Flatpak")
				sudo apt-get install flatpak -yy
				bash install.sh -f ~/.var/app/org.mozilla.Thunderbird/.thunderbird
			break;;
			esac
			done
			break;;
			No)
			break;;
			esac
			done
	break;;
	"Shadow")
		 git clone https://github.com/rudrab/Shadow
		sudo mv -r ./Shadow /usr/share/icons
		break;;
	"Numix Circle")
	git clone https://github.com/numixproject/numix-icon-theme-circle
	sudo mv -r ./numix-icon-theme-circle /usr/share/icons
	break;;
	"Vivacious-Colors")
	git clone https://github.com/peterwwillis/slackbuilds/tree/master/desktop/vivacious-colors-gtk-icon-theme
	sudo mv -r ./vivacious-colors-gtk-icon-theme /usr/share/icons
	break;;
	"White Sur")
	git clone https://github.com/vinceliuice/WhiteSur-icon-theme
	sudo mv -r ./WhiteSur-icone-theme /usr/share/icons
	break;;
	"Xenlism")
	git clone https://github.com/xenlism/Storm
	sudo mv -r ./Storm /usr/share/icons
	break;;
	"Zafiro")
	git clone https://github.com/zayronxio/Zafiro-icons
	sudo mv -r ./Zafiro-icons /usr/share/icons
	break;;
	"INSTALL ALL ICON PACKS")
			git clone https://github.com/heychrisd/Boston-Icons
        		sudo mv -r  ./Boston-Icons /usr/share/icons
			git clone https://github.com/L4ki/Breeze-Chameleon-Icons
        		sudo mv -r ./Breeze-Chameleon-Icons /usr/share/icons
			sudo add-apt-repository ppa:elementary-os/stable -yy
        		sudo apt-get update
        		sudo apt-get install elementary-icon-theme

			git clone https://github.com/franksouza183/Evolvere-Icons
			sudo mv -r ./Evolvere-Icons /usr/share/icons

			git clone https://github.com/shlinux/faenza-icon-theme
			sudo mv -r ./faenza-icon-theme /usr/share/icons

			git clone https://github.com/daniruiz/flat-remix
			sudo mv -r ./flat-remix /usr/share/icons

			https://github.com/gnome-colors/gnome-colors
			sudo mv -r ./gnome-colors /usr/share/icons

			git clone https://github.com/bikass/kora
			sudo mv -r ./kora /usr/share/icons

			git clone https://github.com/keeferrourke/la-capitaine-icon-theme
			sudo mv -r ./la-capitaine-icon-theme /usr/share/icons

			git clone https://github.com/zayronxio/Mojave-CT
			sudo mv -r ./Mojave-CT /usr/share/icons

			git clone https://github.com/snwh/moka-icon-theme
			sudo mv -r ./moka-icon-theme /usr/share/icons
			git clone https://github.com/Nitrux
			sudo mv -r ./Nitrux /usr/share/icons

			git clone https://github.com/OrancheloTeam/oranchelo-icon-theme
			sudo mv -r ./oranchelo-icon-theme /usr/share/icons

			git clone https://github.com/snwh/paper-icon-theme
			sudo mv -r ./paper-icon-theme /usr/share/icons
	sudo sh -c "echo 'deb http://ppa.launchpad.net/papirus/papirus/ubuntu focal main' > /etc/apt/sources.list.d/papirus-ppa.list"
	sudo apt-get install dirmngr
	sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com E58A9D36647CAE7F
	sudo apt-get update
	sudo apt-get install papirus-icon-theme
	wget -qO- https://git.io/papirus-icon-theme-install | sh
	wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.icons" sh
	wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.local/share/icons" sh

			sudo add-apt-repository ppa:papirus/papirus -yy &&
			sudo apt-get update -yy &&
			sudo apt-get install libreoffice-style-papirus -yy || os=$(lsb_release -r | cut -f2) &&	echo $os &&
			 if [ "$os" == '21.10' ]; then
				wget https://launchpad.net/~papirus/+archive/ubuntu/papirus/+files/papirus-icon-theme_20211101-5562+pkg22~ubuntu21.10.1_all.deb | dpkg -i
			elif [ "$os" == '21.04' ]; then
				wget https://launchpad.net/~papirus/+archive/ubuntu/papirus/+files/papirus-icon-theme_20211101-5562+pkg22~ubuntu21.04.1_all.deb
			elif [ "$os" == '20.04' ]; then
				wget https://launchpad.net/~papirus/+archive/ubuntu/papirus/+files/papirus-icon-theme_20211101-5562+pkg22~ubuntu20.04.1_all.deb
			else
			echo "Sorry your operating system does not seem to be supported by the software
			and/or the installer"
			fi

	sudo apt-get install flatpak -yy || git clone https://github.com/PapirusDevelopmentTeam/thunderbird-theme-papirus && bash ./thunderbird-theme-papirus/script/install.shs

	 git clone https://github.com/rudrab/Shadow
	sudo mv -r ./Shadow /usr/share/icons

	git clone https://github.com/numixproject/numix-icon-theme-circle
	sudo mv -r ./numix-icon-theme-circle /usr/share/icons

	git clone https://github.com/peterwwillis/slackbuilds/tree/master/desktop/vivacious-colors-gtk-icon-theme
	sudo mv -r ./vivacious-colors-gtk-icon-theme /usr/share/icons

	git clone https://github.com/vinceliuice/WhiteSur-icon-theme
	sudo mv -r ./WhiteSur-icone-theme /usr/share/icons

	git clone https://github.com/xenlism/Storm
	sudo mv -r ./Storm /usr/share/icons
	git clone https://github.com/zayronxio/Zafiro-icons
	sudo mv -r ./Zafiro-icons /usr/share/icons
	break;;
	esac
	done

