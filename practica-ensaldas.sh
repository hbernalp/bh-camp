#! /usr/bin/bash

SERVICES=( #esto es un arreglo
    frutas
    cafe
    papas
    desayunos
)

CODE=1  #Codigo de seleccion del arreglo

echo "Estos son los servicios que tengo para ti: "

for v in "${SERVICES[@]}" #Recorriendo el arreglo
    do
        echo "${CODE}- ${v}"  # Capturo el numero de arreglo y le agrego a la posicion del arreglo 
        CODE=$(expr $CODE + 1) # convierto la posicion en numero

    done

read -p "Cual servicio desea tener? : " CLIENT_SERVICES  #Con el -p se puede pregutar, remplaza el echo, Asigno el dato a la variable

echo $CLIENT_SERVICES

case $CLIENT_SERVICES in

    1) echo "${SERVICES[$(expr $CLIENT_SERVICES - 1)]}";;
    2) echo "${SERVICES[$(expr $CLIENT_SERVICES - 1)]}";;
    3) echo "${SERVICES[$(expr $CLIENT_SERVICES - 1)]}";;
    4) echo "${SERVICES[$(expr $CLIENT_SERVICES - 1)]}";;
    *) echo "Este servicio no esta disponible";;

esac