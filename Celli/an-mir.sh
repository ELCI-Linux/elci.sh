#! /bin/bash/

sudo cd /usr/bash


echo "Installing scrcpy"
sudo apt-get install scrcpy 

echo -e  "\e[0;32m sndcpy requires VLC, if VLC is not installed it will be installed automatically? \e[0m"

sudo apt-get install vlc

git clone https://github.com/rom1v/sndcpy/releases/download/v1.0/sndcpy-v1.0.zip

unzip -d sndcpy-v1.0.zip

cd /sndcpy-v1.0

mv sndcpy.apk $mobloc

sudo mv sndcpy.sh /usr/bash

cd /usr/bash

chmod +x sndcpy.sh
bash sndcpy.sh


