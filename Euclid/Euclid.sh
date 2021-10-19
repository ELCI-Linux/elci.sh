#! /bin/bash/

echo -e "\e[0;32m Calculators  \e[0m"
echo -e "\e[0;32m  \e[0m"
PS3='Choose your Calculator: '
BasicCalc=("Calculator" "Gnome Calculator" "Qalculate" "KCalc" "Liri Calculcator" "Pebbles" "Sums" "Skip" "Quit Installer")
select fav in "${BasicCalc[@]}"; do
    case $fav in
"Calculator") echo "License
GPL-3.0" && flatpak install flathub org.kde.kalk -yy && break;;
"GNOME Calculator") flatpak install flathub org.gnome.Calculator -yy && break;;
"Qalculate!") flatpak install flathub io.github.Qalculate -yy && break;;
"KCalc") flatpak install flathub org.kde.kcalc -yy && break;;
"Liri Calculator") flatpak install flathub io.liri.Calculator -yy  && break;;
"Pebbles") flatpak install flathub com.github.subhadeepjasu.pebbles -yy && break;;
"Sums") flatpak install flathub io.gitlab.leesonwai.Sums -yy && break;;
"Skip")
        break;;
"Quit Installer")
            echo "User requested exit"
            exit;;
        *) echo "invalid option $REPLY";;
    esac
done


echo -e "\e[0;32m Professional and higher learning \e[0m"
echo -e "\e[0;34m Genius \e[0m"
echo -e "\e[0;34m Would you like to learn about Genius? \e[0m"
PS3='Genius is a general purpose calculator fit for both many uses. What would you like to do? '
Genius=("Learn about Genius" "Install Genius"  "Skip" "Quit Installer")
select fav in "${Genius[@]}"; do
    case $fav in
"Learn about Genius") cat Genius.txt ;;
"Install Genius") flatpak install flathub org.gnome.genius -yy && break;;
"Skip")
        break;;
"Quit Installer")
            echo "User requested exit"
            exit;;
        *) echo "invalid option $REPLY";;
    esac
done


echo -e "\e[0;34m SpeedCrunch is a fast, high-precision scientific calculator \e[0m"
echo -e "\e[0;34m Would you like to learn about SpeedCrunch? \e[0m"
PS3='Genius is a general purpose calculator fit for both many uses. What would you like to do? '
Genius=("Learn about SpeedCrunch" "Install SpeedCrunch"  "Skip" "Quit Installer")
select fav in "${SpeedCrunch[@]}"; do
    case $fav in
"Learn about SpeedCrunch") cat Genius.txt ;;
"Install SpeedCrunch") flatpak install flathub org.gnome.genius -yy && break;;
"Skip")
        break;;
"Quit Installer")
            echo "User requested exit"
            exit;;
        *) echo "invalid option $REPLY";;
    esac
done


echo -e "\e[0;34m Veusz is an interactive graphical scientific plotting and graphing package. \e[0m"
PS3='What would you like to do?'
Veusz=("Learn about Veusz" "Install Veusz"  "Skip" "Quit Installer")
select fav in "${Veusz[@]}"; do
    case $fav in
"Learn about Veusz") echo "coming soon" ;;
"Install Veusz") flatpak install flathub io.github.veusz.Veusz -yy && break;;
"Skip")
        break;;
"Quit Installer")
            echo "User requested exit"
            exit;;
        *) echo "invalid option $REPLY";;
    esac
done

echo -e "\e[0;34m Scilab is free and open source software for numerical computation providing a powerful computing environment for engineering and scientific applications. \e[0m"
PS3='What would you like to do?'
Veusz=("Learn about Scilab" "Install Scilab"  "Skip" "Quit Installer")
select fav in "${Veusz[@]}"; do
    case $fav in
"Learn about Scilab") echo "Data compiled via flathub on 4/10/21" &&

echo -e "\e[0;34m Would you like to learn about Scilab? \e[0m"
echo -e "\e[0;35m Scilab features: \e[0m"
sleep 0.4s
echo -e "\e[0;33m Maths & Simulation: For usual engineering and science applications \e[0m"
sleep 0.4s
echo -e "\e[0;33m 2-D & 3-D Visualization: Graphics functions to visualize, annotate and export data  \e[0m"
sleep 0.4s
echo -e "\e[0;33m Optimization: Algorithms to solve constrained and unconstrained continuous and discrete problems \e[0m"
sleep 0.4s
echo -e "\e[0;33m Statistics: Tools to perform data analysis and modeling \e[0m"
sleep 0.4s
echo -e "\e[0;33m Control System Design & Analysis: Standard algorithms and tools for control system study \e[0m"
sleep 0.4s
echo -e "\e[0;33m Signal Processing: Visualize, analyze and filter signals in time and frequency domains \e[0m"
sleep 0.4s
echo -e "\e[0;33m Application Development: Increase Scilab native functionalities and manage data exchanges \e[0m"
sleep 0.4s
echo -e "\e[0;33m Xcos - Hybrid dynamic systems modeler and simulator: Modeling physical systems, control systems \e[0m";;
"Install Scilab") flatpak install flathub org.scilab.Scilab -yy && break;;
"Skip")
        break;;
"Quit Installer")
            echo "User requested exit"
            exit;;
        *) echo "invalid option $REPLY";;
    esac
done




#yes === cat Genius.txt && break;;
#no === break;;
