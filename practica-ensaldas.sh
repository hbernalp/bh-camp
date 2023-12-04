#!/usr/bin/bash

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
		echo "${CODE_FRUTAS}- ${v}"
		CODE_FRUTAS=$(expr $CODE_FRUTAS + 1)
	done
	read -p "Cual fruta tu quieres ordernar ? " FRUTAS_USER_ORDER
	echo "aqui esta tu !!!!! ${FRUTAS[$FRUTAS_USER_ORDER]}!!!!!!!, QUE LA DISFRUTES !!!!!" 
}

cafe() {
	CAFE=(
		Tinto
		Capuchino
		Expreso
		Pintado
	)

	echo "Estas son las bebidas calientes disponibles: "
	CODE_CAFE=0
	for v in "${CAFE[@]}"
	do
		echo "${CODE_CAFE}- ${v}"
		CODE_CAFE=$(expr $CODE_CAFE + 1)
	done

	read -p " Cual es la bebida caliente que desea ordenar?: \n \t" CAFE_ORDER_USER
	echo "Aqui esta tu  ${CAFE[$CAFE_ORDER_USER]} !!!, Que lo disfrute !!!!!!"
}

papas() {
	PAPA=(
		Pure
		Francesa
		Estralladas
		Maya
	)

	echo "Estas son las comidas iniciales que disponemos: "
	CODE_PAPA=0
	for v in "${PAPA[@]}"
	do
		echo "${CODE_PAPA}- ${v}"
		CODE_PAPA=$(expr $CODE_PAPA + 1)
	done

	read -p "Cual es tu seleccion para el inicio, que va a ordenar?: \n \t" PAPA_ORDER_USER
	echo "Aqui esta su seleccion de ${PAPA[$PAPA_ORDER_USER]} !!!, Que lo disfrute !!!"
}

desayunos() {
	DESAYUNO=(
		Caldo
		Changua
		Huevos
	)

	echo "Estos son los desayuno para hoy!!! "
	CODE_DESAYUNO=0
	for v in ${DESAYUNO[@]}
	do
		echo "${CODE_DESAYUNO}- ${v}"
		CODE_DESAYUNO=$(expr $CODE_DESAYUNO + 1)
	done

	read -p "Cual es la seleccion para el desayuno que desea ordenar?: \n \t" DESAYUNO_ORDER_USER
	echo "Aqui esta su orden de ${DESAYUNO[DESAYUNO_ORDER_USER]} !!!!, Que lo disfrutes !!!"
}

read -p "cual servicio tu deseas tener ? : " CLIENT_SERVICES
case $CLIENT_SERVICES in
1) frutas;;
2) cafe;; 
3) papas;;
4) desayunos;;
*) echo "Este servicio no esta disponible!";; 
esac
