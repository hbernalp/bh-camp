#! /usr/bin/bash

echo "por favor digite un numero entre el 1 y el 100"
read NUMERO

if [[ $NUMERO -lt 100 && $NUMERO -gt 0 ]]
then
        echo "El numero digitado ${NUMERO} esta en los parametros"

else
        echo "No se cumple la condicion"

fi