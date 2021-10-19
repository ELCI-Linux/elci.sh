#! /bin/bash
echo "Create a question ID"
read ID
echo "Which question would you like to ask?"
read question

echo "What is the argument for the yes option?"
read yesopt

echo "What is  the argument for the no option?"
read noopt

touch $ID.txt
echo "Select your break configuration"
PS3='Choose your Break Configuration: '
Break=("Single Break - Yes" "Single Break - No" "Double Break" "No Breaks")
select fav in "${Break[@]}"; do
    case $fav in
"Single Break - Yes")
bash SBY.sh > ./$ID.txt
 	 break;;
"Single Break - No")
bash SBN.sh > ./$ID.txt
break;;
"Double Break")
bash DB.sh > ./$ID.txt
break;;
"No Break")
bash NB.sh > ./$ID.txt
break
;;

        *) echo "invalid option $REPLY";;
    esac
done


