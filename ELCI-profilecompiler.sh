#! /bin/bash
#This installer was created by ELCI MEDIA UK

chmod +x elci-profilecompiler.sh

echo "What is your name?"
read name
echo "Hello $name!"

echo "Is this your first time using ELCI.sh?"
read  EXP
[ $EXP is No ]; then
        echo "Great!"
else
         echo "Do not worry, we have you covered"
        echo "ELCI installer was designed a simple way to $install a wide range of Linux software from a single command"
        echo "Just enter your details when prompted and the installer does all the hardwork for you"
fi


