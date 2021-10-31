#! /bin/bash/

#fix atom deb and rpm installs
echo -e  "\e[7;36m Tex can help you install a variety of text editors. \e[0m"

echo -e "\e[7;35m Pick an install method for emacs \e[0m"
PS3='Choose your text editor: '
tex=("atom" "emacs" "micro" "nano" "vim" "INSTALL ALL" "Skip" "Quit Installer")
select fav in "${tex[@]}"; do
    case $fav in
"atom")
        bash atom.sh && break;;
"emacs")
        bash emacs.sh && break;;
"micro")
echo "Installing micro requires eget"
echo "If eget is not installed, it will be"
echo "Would you like to continue installing micro?"
select yn in "Yes" "No"; do
case $yn in
Yes)	curl -o eget.sh https://zyedidia.github.io/eget.sh
shasum -a 256 eget.sh
bash eget.sh &&
curl https://getmic.ro | bash && break;;
No) break;;
esac
done
        echo "micro is not yet supported" && break;;
"nano")
	sudo apt-get install nano && break;;
"vim")
       sudo apt-get install vim && break;;
"vscode")
       wget -s https://az764295.vo.msecnd.net/stable/c13f1abb110fc756f9b3a6f16670df9cd9d4cf63/code_1.61.1-1634175470_amd64.deb && 
	chmod u+x code_1.61.1-1634175470_amd64.deb &&
	sudo dpkg -i code_1.61.1-1634175470_amd64.deb && break;;
"INSTALL ALL")
	sudo apt-get install nano vim & wget -s https://az764295.vo.msecnd.net/stable/c13f1abb110fc756f9b3a6f16670df9cd9d4cf63/code_1.61.1-1634175470_amd64.deb && 
        chmod u+x code_1.61.1-1634175470_amd64.deb &&
        sudo dpkg -i code_1.61.1-1634175470_amd64.deb && break;;

"Skip")
            break;;
"Quit Installer")
            echo "User requested exit"
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac

done
