#! /usr/bin/bash

SERVICES=( #esto es un arreglo
    frutas
    cafe
    papas
)

CODE=1  #Codigo de seleccion del arreglo

for v in "${SERVICES[@]}" #Recorriendo el arreglo
    do
        echo "${CODE}- ${v}"  # Capturo el numero de arreglo y le agrego a la posicion del arreglo 
        CODE=$(expr $CODE + 1) # convierto la posicion en numero

    done

echo "Tenemos fruta, Cafe y Papas"