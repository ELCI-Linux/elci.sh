echo -e "\e[0;35m Web Browsers allow users to surf the internet \e[0m"
echo -e "\e[0;31m ELCI recommend Brave Browser \e[0m"
PS3='Choose your Browser: '
Tor=("Brave" "Chromium" "Chrome" "Dissenter" "Epiphany" "Falkon" "Firefox" "Konqueror" "Links" "Midori" "Min" "Opera" "Pale Moon" "SlimJet" "Vivaldi" "Skip" "Quit Installer")
select fav in "${Tor[@]}"; do
    case $fav in
"Learn More")

echo -e "\e[0;35m Welcome to the Hopper Guide \e[0m"
echo -e "\e[0;31m Hopper is a utility for distro swapping \e[0m"
echo -e "\e[0;31m Hopper is a utility for distro swapping \e[0m"
echo -e "\e[0;31m Hopper is a utility for distro swapping \e[0m"
echo -e "\e[0;31m Hopper is a utility for distro swapping \e[0m"
echo -e "\e[0;31m Hopper is a utility for distro swapping \e[0m"
echo -e "\e[0;31m Hopper is a utility for distro swapping \e[0m"
echo -e "\e[0;31m Hopper is a utility for distro swapping \e[0m"
echo -e "\e[0;31m Hopper is a utility for distro swapping \e[0m"
echo -e "\e[0;31m Hopper is a utility for distro swapping \e[0m"
"Start Hop" ) 
echo -e "\e[0;31m To start, name this hop. (e.g. June 19th or Mint2Pop \e[0m"
read hopname
sudo mkdir $HOPNAME
bash HopScheme.sh
"Finish Hop")
"Skip")
            break;;
"Quit Installer")
            echo "User requested exit"
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
