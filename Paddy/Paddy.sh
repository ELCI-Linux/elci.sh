#! /bin/bash/
echo -e "\e[0;31m Paddy is used to install an array of Console Emulators \e[0m"


PS3='Which platform would you like to emulate?'
Platform=("DS" "GameCube/Wii" "GB/GBA" "PSP" "PS1" "PS2" "PS3" "Switch" "NES" "XBOX")
select fav in "${Platform[@]}"; do
case $fav in

"DS")
echo -e  "\e[7;34m Nintendo DS \e[0m"
	PS3='Which DS emulator would you like?'
	DS=("Citra" "DeSuME" "Melon")
	select fav in "${DS[@]}"; do
	case $fav in
	"Citra")
	echo "Citra"
	flatpak install flathub org.citra_emu.citra -yy
	break;;
	"DeSuME")
	echo "DeSuME - DS"
 	flatpak install flathub org.desmume.DeSmuME -yy
	break;;
	"Melon")
	echo "Melon - DS"
	flatpak install flathub net.kuribo64.melonDS -yy
	break;;
	esac
	done
break;;
"GameCube/Wii")
echo "Dolphin - Gamecube and Wii"
flatpak install flathub org.DolphinEmu.dolphin-emu -yy 

echo -e  "\e[7;34m Gameboy Advamce \e[0m"

echo -e  "\e[7;34m Nintendo DS \e[0m"
	PS3='Which DS emulator would you like?'
	GBA=("gbe-plus" "mgba" "All GBA EMULATORS" "Skip" "Quit Installer")
	select fav in "${GBA[@]}"; do
	case $fav in
	"gbe-plus")
	echo "gbe-plus - Gameboy Advance"
	flatpak install flathub com.github.shonumi.gbe-plus -yy
	break;;
	"mgba")
	echo "mgba = Gameboy Advance "
	flatpak install flathub io.mgba.mGBA -yy && cat GameBoy.txt
	break;;
	"All GBA EMULATORS")
	flatpak install flathub com.github.shonumi.gbe-plus -yy
	flatpak install flathub io.mgba.mGBA -yy
	break;;
	"Skip") 
	break;;
	"Quit Installer")
	exit;;
	esac
	done
break;;
"Famicon/NES")
	echo -e  "\e[7;34m Famicon/NES \e[0m"
	echo "Nestopia - NES/Famicom"
	flatpak install flathub ca._0ldsk00l.Nestopia -yy
break;;
"PSP")
	echo -e  "\e[7;34m PSP \e[0m"
	echo "PPSSPP - PSP"
	flatpak install flathub org.ppsspp.PPSSPP -yy
break;;
"PS1")
	echo -e  "\e[7;34m Playstation \e[0m"
	echo "Duckstation - PS1"
	flatpak install flathub org.duckstation.DuckStation -yy
break;;
"PS2")
	echo -e  "\e[7;34m PlayStation 2 \e[0m"
	echo "PCSX2 - PlayStation 2"
	flatpak install flathub net.pcsx2.PCSX2 -yy
break;;
"PS3")
	echo -e  "\e[7;34m PlayStation 3 \e[0m"
	echo "RPCS3"
	flatpak install flathub net.rpcs3.RPCS3 -yy

break;;

# echo -e  "\e[7;34m RetroArch \e[0m"
#flatpak install flathub org.libretro.RetroArch -yy
#break;;

"Switch")
	echo -e  "\e[7;35m Switch  \e[0m"
	flatpak install flathub org.yuzu_emu.yuzu -yy
break;;
"XBOX")
	echo -e  "\e[7;31m XBOX \e[0m"
	flatpak install --user flathub app.xemu.xemu
break;;
"Skip") exit;;
"Quit Installer") exit && exit;;
esac
done

echo -e  "\e[7;34m Would you like to install more emulators? \e[0m"
select yn in "Yes" "No"; do
case $yn in
Yes) bash Paddy.sh break;;
No) break;;
esac
done
exit

