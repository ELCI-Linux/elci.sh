#! /bin/bash/

#install coin using snap

sudo snap install coin || sudo apt install snapd && sudo systemctl enable snapd && sudo systemctl start snapd && sudo snap install coin
#installing ETH packages
sudo add-apt-repository ppa:ethereum/ethereum
sudo apt update
sudo apt-get install ethereum


#failsafe
touch /etc/apt/sources.list.d/ethereum.list
echo "deb http://ppa.launchpad.net/ethereum/ethereum/ubuntu bionic main 
deb-src http://ppa.launchpad.net/ethereum/" >> /etc/apt/sources.list.d/ethereum.list

sudo apt-key adv --keyserver keyserver.ubuntu.com  --recv-keys 2A518C819BE37D2C2031944D1C52189C923F6CA9

sudo apt update
sudo apt install ethereum


#ethminer

mkdir ethminer
wget -O ethminer/ethminer.tar.gz https://github.com/ethereum-mining/ethminer/releases/download/v0.18.0/ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz
tar xzf ethminer/ethminer.tar.gz -C ethminer/
ethminer/bin/ethminer --help
