#! /bin/bash

echo "Enter a name for your PS3 menu"
read menuname

echo "What is the prompt? (e.g. select your favourite fruit, choose your locale)"
read prompt

echo "Enter the name of each option within speechmarks (e.g "Apples" "Oranges" "Grapes")"
until [[ $optnum =~ ^[0-9]$  || $optnum = '20' ]]; do
read options

PS3='$prompt: '
$menutitle=($options)
select fav for "${$menutitle[@]}"
case $fav in


# automate ["options")] + [argument entry]

*) echo "invalid input"

esac
done
exit
