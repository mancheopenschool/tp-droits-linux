#!/bin/sh
#### ^^ Permet de déclarer le type de fichier (utilise dans le cas d'une execution du type: ./test.sh)

clear #### Permet de clear la console

echo "======================="
echo " Lancement du script.. "
echo "======================="
sleep 2

echo "Création des utilisateurs..."


##### Ici nous créons une boucle qui vérifie si un user a bien été ajouté

while true
do
useradd --no-create-home fx > /dev/null
user=$(cut -d: -f1 < /etc/passwd | grep fx)
if [ "${user}" = "fx" ]; then
    break
else
    echo "Erreur lors de la création d'un user"
fi
done


while true
do
useradd --no-create-home yannick > /dev/null
user=$(cut -d: -f1 < /etc/passwd | grep yannick)
if [ "${user}" = "yannick" ]; then
    break
else
    echo "Erreur lors de la création d'un user"
fi
done

while true
do
useradd --no-create-home ameline > /dev/null
user=$(cut -d: -f1 < /etc/passwd | grep ameline)
if [ "${user}" = "ameline" ]; then
    break
else
    echo "Erreur lors de la création d'un user"
fi
done

while true
do
useradd --no-create-home stephanie > /dev/null
user=$(cut -d: -f1 < /etc/passwd | grep stephanie)
if [ "${user}" = "stephanie" ]; then
    break
else
    echo "Erreur lors de la création d'un user"
fi
done

while true
do
useradd --no-create-home tata > /dev/null
user=$(cut -d: -f1 < /etc/passwd | grep tata)
if [ "${user}" = "tata" ]; then
    break
else
    echo "Erreur lors de la création d'un user"
fi
done

while true
do
useradd --no-create-home toto > /dev/null
user=$(cut -d: -f1 < /etc/passwd | grep toto)
if [ "${user}" = "toto" ]; then
    break
else
    echo "Erreur lors de la création d'un user"
fi
done

while true
do
useradd --no-create-home titi > /dev/null
user=$(cut -d: -f1 < /etc/passwd | grep titi)
if [ "${user}" = "titi" ]; then
    break
else
    echo "Erreur lors de la création d'un user"
fi
done

sleep 2 #### Sleep permet de faire une petit pause (temps en secondes)
echo "Création des dossiers..." #### Echo permet d'afficher du contenu dans la console

mkdir -p /home/tp/profs > /dev/null
mkdir /home/tp/eleves > /dev/null
mkdir /home/tp/administratif > /dev/null
mkdir /home/tp/commun > /dev/null
mkdir /home/tp/education > /dev/null
mkdir /home/tp/direction > /dev/null

echo "Création des groupes..."

addgroup eleves > /dev/null
addgroup profs > /dev/null
addgroup administratif > /dev/null
addgroup education > /dev/null
addgroup direction > /dev/null

echo "Attribution des users dans les groupes"

usermod -a -G eleves,education titi > /dev/null
usermod -a -G eleves,education tata > /dev/null
usermod -a -G eleves,education toto > /dev/null

usermod -a -G profs,education,direction yannick > /dev/null
usermod -a -G profs,education,direction fx > /dev/null

usermod -a -G administratif,direction stephanie > /dev/null
usermod -a -G administratif,direction ameline > /dev/null

echo "Attribution des droit de propriété et droit d'utilisation..."

chown -R root:eleves /home/tp/eleves && chmod -R 070 /home/tp/eleves/
chown -R root:profs /home/tp/profs && chmod -R 070 /home/tp/profs/
chown -R root:administratif /home/tp/administratif && chmod -R 070 /home/tp/administratif/
chown -R root:direction /home/tp/direction && chmod -R 070 /home/tp/direction/
chown -R root:education /home/tp/education && chmod -R 070 /home/tp/education/
chmod -R 777 /home/tp/commun

echo
echo
echo "Terminé !"

exit #### Permet de quitter le script