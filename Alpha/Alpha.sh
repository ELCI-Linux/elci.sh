#! /bin/bash/

PS3='Choose your display manager:'
DipMan=("GDM3" "KDM" "LXDM" "Ly" "tbsm" "SDDM" "XDM" "Skip" "Quit Installer")
select fav in "${DipMan[@]}"; do
	case $fav in
"GDM3") sudo apt-get install gdm3 -yy
	break;;
"KDM") sudo apt-get install kdm -yy
	break;;
"LXDM") sudo apt-get install lxdm -yy
	break;;
"Ly")
#clone repository
git clone https://github.com/nullgemm/ly.git
cd ./ly
#make submodules
make github

#Compile
make

sudo make run

#Install ly
sudo make install

#enable ly
sudo systemctl enable ly.service
echo -e "\e[7;35m Would you like disable tty2? \e[0m"
select yn in "Yes" "No"; do
case $yn in
Yes) sudo systemctl disable getty@tty2.service && break;;
No) break;;
esac
done
#Disable Ttys
break;;
"tbsm")
git clone https://github.com/loh-tar/tbsm
cd ./tbsm
sudo make Makefile
sudo make install

#trigger autostart?
touch AS-tbsm.txt
echo "#Auto start tbsm after login on first two VTs" >> AS-tbsm.txt
echo "[[ $XDG_VTNR -le 2 ]] && tbsm" >> AS-tbsm.txt
echo "tbsm doc man" >> AS-tbsm.txt
echo "tbsm help" >> AS-tbsm.txt
sudo cat AS-tbsm.txt >> /etc/bash.bashrc

break;;
"SDDM") sudo apt-add-repository ppa:blue-shell/sddm 
	 sudo apt-get update
	sudo apt-get install sddm -yy 
	break;;
"XDM") sudo apt-get install xdm -yy
	break;;
"Skip") break;;
"Quit Installer") exit;;
esac
done
exit
