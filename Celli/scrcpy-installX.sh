#! /bin/bash



echo "Installing scrcpy"
sudo apt-get install scrcpy 

echo "Now connect your phone via USB"
echo "Enable USB Debugging"
sleep 5s
scrcpy

