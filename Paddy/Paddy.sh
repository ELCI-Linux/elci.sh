#! /bin/bash/
echo -e "\e[0;31m Paddy is used to install an array of Console Emulators \e[0m"



echo "Flatpak Installing Emulators"
echo -e  "\e[7;34m Nintendo DS \e[0m"
echo "Shhh... Nintendo must never know"

echo "DeSuME - DS"
 flatpak install flathub org.desmume.DeSmuME -yy &&
echo "Melon = DS"
flatpak install flathub net.kuribo64.melonDS -yy &&
echo "Citra"
flatpak install flathub org.citra_emu.citra -yy &&


echo "Dolphin - Gamecube and Wii" &&
flatpak install flathub org.DolphinEmu.dolphin-emu -yy 

echo -e  "\e[7;34m Gameboy Advamce \e[0m"
echo "mgba = Gameboy Advance "
flatpak install flathub io.mgba.mGBA -yy && cat GameBoy.txt
echo "gbe-plus - Gameboy Advance"
flatpak install flathub com.github.shonumi.gbe-plus -yy


echo -e  "\e[7;34m NES/Famicon \e[0m"
echo "Nestopia - NES/Famicom"
flatpak install flathub ca._0ldsk00l.Nestopia -yy &&


echo -e  "\e[7;34m Playstation \e[0m"
echo "Duckstation - PS1"
flatpak install flathub org.duckstation.DuckStation -yy &&

echo -e  "\e[7;34m PlayStation 2 \e[0m"
echo "PCSX2 - PlayStation 2"
flatpak install flathub net.pcsx2.PCSX2 -yy &&
cat PS2.txt

echo -e  "\e[7;34m PSP \e[0m"
echo "PPSSPP - PSP"
flatpak install flathub org.ppsspp.PPSSPP -yy &&

echo -e  "\e[7;34m PlayStation 3 \e[0m"
echo "PS3"
flatpak install flathub net.rpcs3.RPCS3 -yy &&


echo -e  "\e[7;34m RetroArch \e[0m"
flatpak install flathub org.libretro.RetroArch -yy
