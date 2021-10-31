#! /bin/bash
#This installer was created by ELCI MEDIA UK

chmod +x ProfileX.sh

echo "GAME ON!"
echo "Flatpak Installing Emulators"

echo "Creating File Directory for Nintendo Emulation"
#edit directories for stability
sudo mkdir roms /media/public
sudo mkdir Nintendo /media/public/roms
sudo mkdir GBA /media/public/roms/Nintendo
sudo mkdir DS /media/public/roms/Nintendo
sudo mkdir N64 /media/public/roms/Nintendo
sudo mkdir GC /media/public/roms/Nintendo
sudo mkdir Wii /media/public/roms/Nintendo
sudo mkdir Switch /media/public/roms/Nintendo

echo "Creating File Directory for Sony Emulation"
sudo mkdir Sony /media/public/roms/
sudo mkdir PS1 /media/public/roms/Sony/
sudo mkdir PS2 /media/public/roms/Sony/
sudo mkdir PS3 /media/public/roms/Sony/
sudo mkdir PSP /media/public/roms/Sony/
sudo mkdir Vita /media/public/roms/Sony/


echo "Shhh... Nintendo must never know"

echo "That is just a DS in my pocket"
flatpak install flathub org.desmume.DeSmuME -yy &&
echo "Dolphins are really smart, this one plays Gamecube and Wii" &&
flatpak install flathub org.DolphinEmu.dolphin-emu -yy &&
echo "Personally, I think the name Gameboy is pretty sexist"
flatpak install flathub io.mgba.mGBA -yy &&
echo "I mean really, who could not think of a better name than Gameboy?"
flatpak install flathub com.github.shonumi.gbe-plus -yy &&
echo "Nestopia: NES/Famicom"
flatpak install flathub ca._0ldsk00l.Nestopia -yy &&
echo "Touchscreen gaming..."
flatpak install flathub net.kuribo64.melonDS -yy &&
echo "...x2"
flatpak install flathub org.citra_emu.citra -yy &&

echo "Playstation time"
echo "If it looks like a duck... it probably emulates PS1"
flatpak install flathub org.duckstation.DuckStation -yy &&
echo "PlayStation 2"
flatpak install flathub net.pcsx2.PCSX2 -yy &&

echo "PSP"
flatpak install flathub org.ppsspp.PPSSPP -yy &&

echo "PS3"
flatpak install flathub net.rpcs3.RPCS3 -yy &&

echo "You cannot emulate greatness, but you can remote play!"
flatpak install flathub re.chiaki.Chiaki -yy &&

echo "That is  enough Sony for now!"

echo "We are really STEAMing through this..."
flatpak install flathub com.valvesoftware.Steam -yy &&
flatpak install flathub com.valvesoftware.SteamLink -yy &&

echo "Do you want that chord?! Which chord? Discord?" &&
flatpak install flathub com.discordapp.Discord -yy &&

echo "RETRO M*********** ARCH!"

flatpak install flathub org.libretro.RetroArch -yy &&

echo "Crack a bottle, make your body wobble!" &&
flatpak install flathub com.usebottles.bottles -yy &&


echo "Out the ashes" &&
sudo apt install wine64 -yy &&
flatpak install flathub org.phoenicis.playonlinux -yy &&




echo "Done - you can now:" &&
echo "- Emulate PS1, PS2, PS3, PSP, N64, Gamecube, Wii, Switch, Gameboy, Gameboy Color and GBA" &&
echo "- Remote play PS4 and PS5" &&
echo "- Access discord" &&
echo "- Access Steam and Steam Link"

echo "Note: Stadia provision was not included in this version of GameX.sh!"
echo "To gain access to stadia install chrome via the installer or Browsersx.sh"


