#! /bin/bash/
chmod +x IPFirewallX.sh

echo -e  "\e[0;33m Downloading Firewall Rules \e[0m"

git clone https://github.com/ChrisTitusTech/firewallsetup.git

echo -e  "\e[0;33m Making Rules Permanent \e[0m"
sudo apt install iptables-persistent
sudo /etc/init.d/netfilter-persistent save

echo -e  "\e[0;31m IP tables saved \e[0m"

