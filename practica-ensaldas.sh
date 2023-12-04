#! /bin/bash

SERVICES=(
	frutas
	cafe
	papas
	desayunos
)

CODE=1

echo "estos son los servicios que tengo disponibles para ti."
for v in "${SERVICES[@]}"
do
	echo "${CODE}- ${v}"
	CODE=$(expr $CODE + 1)

done

frutas() {
	FRUTAS=(
		manzana
		pera
		mandarina
	)
	echo "estas son las frutas que tenemos disponibles"
	CODE_FRUTAS=0
	for v in "${FRUTAS[@]}"
	do
		echo "${CODE_FRUTAS}-${v}"
		CODE_FRUTAS=$(expr $CODE_FRUTAS + 1)
	done
	read -p "Cual fruta tu quieres ordernar ? " FRUTAS_USER_ORDER
	echo "aqui esta tu !!!!! ${FRUTAS[$FRUTAS_USER_ORDER]}!!!!!!!, QUE LA DISFRUTES !!!!!" 
}

cafe() {
	echo "estoy en el contexto del cafe"
}

papas() {
	echo "estoy en el contexto de las papas"
}

desayunos() {
	echo "estoy en el contexto de el desayuno"
}

read -p "cual servicio tu deseas tener ? : " CLIENT_SERVICES
case $CLIENT_SERVICES in
1) frutas;;
2) cafe;; 
3) papas;;
4) desayunos;;
*) echo "Este servicio no esta disponible!";; 
esac
