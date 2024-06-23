#! /bin/bash
echo "ingrese un nombre"
read nombre

api=$(curl -s "https://api.genderize.io/?name=${nombre}")
genero=$(echo $api | jq -r '.gender')

if [ "$genero" == "male" ];
then
genero_esp="masculino"
elif [ "$genero" == "female" ];
then
genero_esp="femenino"
fi 

if [ "$genero" == "null" ];
then
echo "no se verifico el genero para el nombre"
else 
echo "el genero del nombre $nombre es $genero_esp."
fi