#! /bin/bash/
echo "Would you like to install multiple taskbars/docks?"

select yn in "Yes" "No"; do
case $yn in
Yes) TBBREAK=$'' && break;;
No)  TBBREAK=$'&& break' && break;;
esac
done

PS3='Choose your TaskBar: '
Taskbar=("AWN" "bmpanel2" "Cairo" "DockbarX" "Docky" "fbpanel" "i3status" "Latte Dock" "Lemonbar" "Plank" "Polybar" "tint2" "Vala Panel" "XFCE Panel" "Skip" "Quit Installer")
select fav in "${Taskbar[@]}"; do
    case $fav in
    
"AWN") echo "not yet implemented, please choose another";;
"bmpanel2") echo "not yet implemented, please choose another" ;;
"Cairo")echo "not yet implemented, please choose another" ;;
"DockbarX") echo "not yet implemented, please choose another" ;;
"Docky") echo "WARNING this installation method is known to be unstable or non-functional"
	select yn in "Yes" "No"; do
	case $yn in
	Yes) sudo add-apt-repository ppa:docky-core/ppa
		sudo apt-get update
		sudo apt-get install docky && docky;;
	No) echo "returning to Adam - Main"
	esac
	done
	break;;
"fbpanel") sudo apt-get install fbpanel $TBBREAK;;
"i3status") sudo apt-get install -y i3status -yy $TBBREAK;;
"Latte Dock") sudo apt install latte-dock -yy
		sudo -i touch howtoremoveubuntudock.txt		sudo echo "Run:" "gnome-extensions disable ubuntu-dock@ubuntu.com" &> howtoremoveubuntudock.txt $TBBREAK;;
"Lemonbar") sudo apt-get install lemonbar -yy $TBBREAK;;
"Plank")	sudo apt-get install plank -yy $TBBREAK;;
"Polybar")	sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev
 libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev
libxcb-xkb-dev pkg-config python3-xcbgen xcb-proto libxcb-xrm-dev i3-wm
libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev -yy
		
sudo apt install libxcb-composite0-dev libjsoncpp-dev -yy
sudo ln -s /usr/include/jsoncpp/json/ /usr/include/json
git clone https://github.com/jaagr/polybar.git
cd ./polybar && echo "Building polybar" && sudo ./build.sh && cd .. && echo "cleaning up" && rm -r ./polybar	&& echo "Clean up finished" $TBBREAK;;
"tint2") sudo apt install tint2 $TBBREAK;;
"Vala Panel")	sudo apt-get install vala-panel-appmenu-common -yy $TBBREAK;;
"XFCE Panel") sudo apt-get install xfce4-panel $TPBREAK;;
"Skip") break;;
"Quit Installer") exit;;
esac
done
exit

		
