#! /bin/bash


#Downloading ADB in the background
echo "Downloading ADB Installer - Please wait. This may take a few minutes"
cd ./Andy
wget -q https://redirector.gvt1.com/edgedl/android/studio/ide-zips/4.2.2.0/android-studio-ide-202.7486908-linux.tar.gz
cd ..
#Switching to Apple Workflow
git clone https://github.com/libimobiledevice/ifuse.git
cd ./ifuse

echo -e  "e[5;33m Building and Installing ifusee[0m"
bash autogen.sh
make
sudo make install

echo -e  "e[0;33m  Setting up FUSE. e[0m"
sudo modprobe fuse
sudo adduser $USER fuse
id | grep fuse && echo yes! || echo not yet...
echo -e "e[0;33m Step 5: Where would you like to mount your iphone? (e.g. /tmp/iphone). e[0m"
read mntpnt
ifuse $mntpnt
cd ..
#returning to ADB Workflow
cd ./Andy
sudo tar -xvf android-studio-ide-202.7486908-linux.tar.gz -C /home/
cd android-studio-ide-202.7486908-linux/bin
./studio.sh &&


echo "Scrcpy provides low-latency wired and wireless screen mirroring from your Android Device to this PC"
echo "Would you like to install scrcpy?"
bash scrcpy-installX.sh

