#! /bin/bash/
chmod +x FBMX.sh



sudo apt-get install xclip
cat Messer.txt | xclip
xclip -o


echo -e "\e[0;33m Installing npm  \e[0m" 



sudo apt-get update

echo "Once logged in at the root level, paste into the terminal and press enter"
sudo -s
sudo apt-get install npm | grep Done


echo -e "\e[0;33m Updating npm  \e[0m" 
curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install nodejs

echo -e "\e[0;33m Installing Messer... \e[0m" 
sudo npm install -g messer

npm install -g fb-messenger-cli
