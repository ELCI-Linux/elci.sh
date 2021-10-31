#! /bin/bash/

echo "Betty is a command-line Virtual ASsistant"
$ sudo apt-get install git curl ruby
git clone https://github.com/pickhardt/betty

echo "Copy the line below into the Vim editor - editor will open in 5s"

cat /Betty/BettyXVIM.txt
sleep 5s
vi ~/.bashrc
sudo apt-get install ruby curl git -y

echo "Mycroft"

cd git clone https://github.com/MycroftAI/mycroft-core.git
cd /mycroft-core
bash dev_setup.sh
echo "Running Mycroft"
cd /mycroft-core ./start-mycroft.sh
