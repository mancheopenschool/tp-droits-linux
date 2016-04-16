#!/bin/sh

clear

echo "======================="
echo " Lancement du script.. "
echo "======================="
sleep 2

deluser fx > /dev/null
deluser yannick > /dev/null
deluser ameline > /dev/null
deluser stephanie > /dev/null
deluser tata > /dev/null
deluser titi > /dev/null
deluser toto > /dev/null

echo "Users supprimés"

sleep 2

rm -rf /home/tp

echo "Dossiers supprimés"

sleep 2

delgroup eleves > /dev/null
delgroup profs > /dev/null
delgroup administratif > /dev/null
delgroup education > /dev/null
delgroup direction > /dev/null

echo "Groupes supprimés"

echo
echo
echo "Desinstallation terminé"

exit