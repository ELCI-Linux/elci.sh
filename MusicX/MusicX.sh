#! /bin/bash/







echo "Audacious"
flatpak install flathub org.atheme.audacious -yy &&

echo "DAW SUITE"

bash DAWX.sh

echo "Installing CMUS"
sudo apt-get install cmus -yy &&
sudo apt-get install libao-ocaml-dev -yy
#dev
echo "Testing CMUS"

dev open -a "cmus" ~/alphav1/elcirecs/bygones.mp3



echo "Byte"

flatpak install flathub com.github.alainm23.byte -yy &&
"Byte Music Player Installed"
echo "I you see star "
flatpak install flathub io.github.cmus.cmus -yy &&
echo "Oh my darling, oh my darling, oh my darling..."
flatpak install flathub org.clementine_player.Clementine -yy &&
echo "Clemtine Music Player Installed"
echo "Oh now you podding!"
flatpak install flathub com.github.z.Cumulonimbus -yy &&
echo "Gnome Music Player"
flatpak install flathub org.gnome.Music -yy &&
Done
echo "Gnome Music Player Installed"
echo "Adeyola wanna roll with Geeza - Yeah we got H2"
flatpak install flathub org.hydrogenmusic.Hydrogen -yy &&
echo "Hydrogen Drum Machine Installed"

echo "I see ******* in your eyes"
flatpak install flathub com.github.naaando.lyrics -yy &&
echo "That Daniel Elk fella wants to buy Arsenal"
flatpak install flathub com.spotify.Client -yy
