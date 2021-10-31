#! /bin/bash/
sudo mkdir ./TIDAL-API
PS3='Choose your TIDAL API Token Source: '
TDLAPI=("Android" "Windows" "Skip" "Quit Installer")
select fav in "${TDLAPI[@]}"; do
    case $fav in
"Android")
        adb pull /storage/emulated/0/Android/data/com.aspiro.tidal/cache  && break;;
"Windows")
	echo "Paste the file directory and press enter"
	read apiloc
	cp $APILOC ./TIDAL-API && break;;
"Skip") break;;
esac
done

mkdir ./confbackups || echo "Using existing backup" 
sudo cp ~/.config/pulse/daemon.conf ./confbackups
echo "Your existing pulse daemon.conf has been copied to the 'confbackups' folder"
echo "Harmony will now replacy daemon.conf, with a TIDAL-Quality compatible version"
sudo cp -i ./confbackups/daemon.conf ~/.config/pulse/daemon.conf 
