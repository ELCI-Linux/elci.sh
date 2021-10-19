#! /bin/bash/




echo -e  "\e[0;33m Would like to install DAWs (Digital Audio Workstations)? \e[0m"

echo -e  "\e[0;35m Ardour \e[0m"
		bash ArdourX.sh &&
echo -e  "\e[0;35m BitWig \e[0m"
bash  BitWigX.sh &&
echo -e  "\e[0;35m FamiX.sh \e[0m"
&& bash FamiX.sh &&
                bash MuseX.sh &&
echo -e  "\e[0;33m Rosegarden \e[0m"
bash RosegardenX.sh &&
echo -e  "\e[0;33m Drumstick \e[0m"
bash DrumstickX.sh &&
echo -e  "\e[0;33m VMPK \e[0m"
bash VMPKX.sh;

cd /
sudo mkdir /VSTs
cd ./VSTs
wget -o ./LinuxVSTs.zip http://airwindows.com/wp-content/uploads/LinuxVSTs.zip
chown admin:admin ./LinuxVSTs.zip
unzip LinuxVSTs.zip
