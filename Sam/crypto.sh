#! /bin/bash/

echo -e  "\e[7;34m Crypto tools \e[0m"



echo -e  "\e[7;36m ARK Desktop Wallet \e[0m"
echo -e  "\e[7;36m Bitcoin Core is open source software which enables the use of BitCoin (BTC) \e[0m"

select yn in "Yes" "No"; do
    case $yn in
        Yes ) bash ARKWallet.sh && break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done

echo -e  "\e[7;35m BitCoin Core \e[0m"
echo -e  "\e[7;36m Bitcoin Core is open source software which enables the use of BitCoin (BTC) \e[0m"

select yn in "Yes" "No"; do
    case $yn in
        Yes ) bash BitCoinCore.sh && break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done


echo -e  "\e[7;35m PeerCoin \e[0m"
echo -e  "\e[7;36m Peercoin is an proof-of-stake cryptocurrency launched in August 2012. \e[0m"
echo -e  "\e[7;36m Like Bitcoin and Litecoin Peercoin stores value and can be sent over the internet without any central authority. \e[0m"

select yn in "Yes" "No"; do
    case $yn in
        Yes ) bash PeerCoin.sh && break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done

echo -e  "\e[7;32m Wasabi  \e[0m"
echo -e  "\e[7;36m Wasabi is an open-source, non-custodial, privacy-focused Bitcoin wallet \e[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) bash Wasabi.sh && break;;
        No ) echo -e  "\e[0;33m Ok, moving on \e[0m" && break;
    esac
done

