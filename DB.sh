#! /bin/bash

echo $question
        select yn in "yes" "no"; do
case $yn in 
yes) $yesopt && break;;
no) $noopt && break;;
esac
done
