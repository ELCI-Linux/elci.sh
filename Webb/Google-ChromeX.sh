#! bin/bash/

echo "Warning: By downloading Chrome, you agree to the Google Terms of Service  and Chrome and Chrome OS Additional Terms of Service"

cat /elcirecs/BrowsersX/legal/ChromeTOS.txt


echo "Note: Installing Google Chrome will add the Google repository so your system will automatically keep Google Chrome up to date."
curl https://www.google.com/intl/en_uk/chrome/thank-you.html?installdataindex=empty&statcb=0&defaultbrowser=0#

tar google-chrome-stable_current_amd64.deb
