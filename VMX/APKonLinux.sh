#! /bin/bash

sudo apt install snapd -yy
snap install --classic anbox-installer && anbox-installer -yy

snap install --devmode --edge anbox
snap refresh --edge --devmode anbox
echo "Installing adb tools"
sudo apt install android-tools-adb -yy

echo "Downloading microg"
wget -o microgcore.apk https://microg.org/fdroid/repo/com.google.android.gms-212158042.apk
wget -o microgserviceframework.apk https://microg.org/fdroid/repo/com.google.android.gsf-8.apk
wget -o microgstore.apk https://microg.org/fdroid/repo/com.android.vending-16.apk
wget -o microghelper.apk https://microg.org/fdroid/repo/org.microg.gms.droidguard-4.apk
wget -o micrognip.apk https://github.com/microg/android_packages_apps_UnifiedNlp/releases

echo "Starting anbox"
anbox.appmgr
echo "installing microg"
adb install microgcore.apk
adb install microgserviceframework.apk
adb install microgstore.apk
adb install microghelper.apk
adb install micrognip.apk
