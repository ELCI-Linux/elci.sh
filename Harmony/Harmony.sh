#! /bin/bash/
echo -e "\e[7;36m Harmony can help users install graphical music players \e[0m"

echo -e "\e[7;36m If you would like to use TIDAL, install Strawberry \e[0m"
echo -e "\e[7;35m Would you like to install multiple music players \e[0m"

select yn in "Yes" "No"; do
case $yn in
Yes) MPBREAK='' && break;;
No)  MPBREAK='&& break' && break;;
esac
done

PS3='Music Player [11 to Skip, 12 to Quit Installer]: '
MPGUI=("Apple Music" "Audacious" "Byte" "CMUS" "Deezer" "Gnome Music Player" "Hydrogen" "Lyrics" "Spotify" "Strawberry" "Skip" "Quit Installer")
select fav in "${MPGUI[@]}"; do
    case $fav in
"Apple Music") sudo apt-get install snap snapd -yy
 sudo snap install apple-music-for-linux && break;;
"Audacious") flatpak install flathub org.atheme.audacious -yy $MPBREAK;;
"Byte") flatpak install flathub com.github.alainm23.byte -yy $MPBREAK;;
"Deezer") flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists nuvola https://dl.tiliado.eu/flatpak/nuvola.flatpakrepo
flatpak update yy
flatpak install nuvola eu.tiliado.NuvolaAppDeezer -yy && flatpak run eu.tiliado.NuvolaAppDeezer -yy
flatpak run eu.tiliado.NuvolaAppDeezer $MPBREAK;;
"CMUS") sudo apt-get install libao-ocaml-dev cmus -yy $MPBREAK;;
"Gnome Music Player") flatpak install flathub org.gnome.Music -yy $MPBREAK;;
"Hydrogen") flatpak install org.hydrogenmusic.Hydrogen -yy $MPBREAK;;
"Lyrics") flatpak install flathub com.github.naaando.lyrics -yy $MPBREAK;;
"Spotify") flatpak install flathub com.spotify.Client -yy $MPBREAK;;
"Strawberry") sudo add-apt-repository ppa:jonaski/strawberry
		 sudo apt-get update
		 sudo apt-get install strawberry -yy
echo -e "\e[7;36m Harmony has detected you have successfully installed Strawberry \e[0m" &&
echo -e "\e[7;36m Would you like to add TIDAL support? \e[0m" &&
select yn in "Yes" "No"; do
case $yn in
Yes) bash TIDAL.sh && break;;
No) break;;
esac
done
$MPBREAK;;
"Skip")
        break;;
"Quit Installer")
           	echo -e "\e[7;33m Exit Requested \e[0m"
            exit;;
        *) echo -e "\e[7;36m Invalid Option \e[0m";;
    esac
done
