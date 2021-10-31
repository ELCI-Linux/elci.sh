#! /bin/bash/

echo -e "\e[7;33m Tiling Window Managers e\[0m"
PS3='Choose your Tiling Window Manage:'
TWM=("AwesomeWM" "bspwn" "dwm" "herbssluftwm" "i3" "leftwm" "monsterwm" "musca" "notion" "Qtile" "RatPoison" "sdorhefs" "snapwm" "spectrwm" "StumpWM" "Sway" "tilix" "tmux" "wtftw" "xmonad")
select fav in "${TWM}[@]"; do
case $fav in;

"AwesomeWM") bash AwesomeWMi.sh
"bspwn"
"dwm") sudo apt-get install dwm suckless-tools xdm dmenu xorg  -yy && echo dwm > .xsession |
echo "apt install failed - attempting manual build"
sudo apt-get install git xorg libx11-dev libxft-dev libxinerama-dev xdm suckless-tools dmenu -yy &&
git clone https://git.suckless.org/dwm && sudo make clean install && echo “exec -dwm” > .xsession | echo "dwm could not be installed"
"herbssluftwm"
"i3"
"leftwm"
"monsterwm"
"musca"
"notion"
"Qtile"
"RatPoison"
"sdorhefs"
"snapwm"
"spectrwm"
"StumpWM"
"Sway") 
"tilix") 
#fix
wget https://github.com/gnunn1/tilix/releases/download/1.9.4/tilix-1.9.4_x86_64-linux-gnu.zip && sudo unzip tilix-1.9.4_x86_64-linux-gnu.zip -d /
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/ && break;;
"tmux") sudo apt-get install tmux && break;;
"wtftw" ) bash wtftwi.sh && break;;
"xmonad" ) bash xmonadi.sh && break;;


