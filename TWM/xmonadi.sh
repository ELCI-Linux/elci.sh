#! /bin/bash/

#Arch
#pacman -S xmonad-contrib

sudo apt-get install xmonad libghc6-xmonad-contrib-dev -yy

#fedora
# yum install xmonad && yum install ghc-xmonad-contrib-devel

#gentoo
#emerge xmonad-contrib

#FreeBSD
#Only the TWM
#cd /usr/ports/x11-wm/hs-xmonad
#sudo make install distclean
#Contrib package
#cd /usr/ports/x11-wm/hs-xmonad-contrib
#sudo make install distclean

#OpenBSD
#sudo pkg_add xmonad

#MacOSX
#port install ghc
#cabal install xmonad
