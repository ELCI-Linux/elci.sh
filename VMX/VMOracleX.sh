#! bin/bash/
chmod +x VMOracleX.sh


echo "VirtualBox is a general-purpose full virtualizer for x86 hardware, targeted at server, desktop and embedded use."
sleep 3s
echo "For a thorough introduction to virtualization and VirtualBox, please refer to the online version of the VirtualBox User Manual's first chapter."
sleep 3s

echo "Welcome to the ELCI Virtual Box Installer"
echo "Are you ready to install VirtualBox?"

select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Ok, installing VirtualBox" &&
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add - &&
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -&&

sudo apt-get update -yy &&
sudo apt-get install virtualbox-6.1 -yy
break;;
        No  ) echo "That is fine, you can re-run this installer by entering 'bash VMOracle.sh' in your terminal."
exit;;    esac 

done

echo "VirtualBox is now installed"
echo "Would you like to download a x86 variant of Android?"

select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "PrimeOS installing" &&
 mkdir /AndroidISOs /home/Public

break;;
        No  ) echo "That is fine, we'll move on."
exit;;    esac
done


