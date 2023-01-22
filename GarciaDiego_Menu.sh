#!/bin/bash
#Autor:
#Diego García Piñeiro
#Tarefa Menú Sistemas Informáticos
clear
sair=1
miusuario="$`whoami`"
while [ $sair -eq 1 ]
do
	opcion=1
	echo "Que operación desexa realizar?"
	echo "Pulsa 1 para explorar unha ruta do sistema"
	echo "Pulsa 2 para imprimir unha dedicatoria"
	echo "Pulsa 3 para cambiar o nome de usuario (para a dedicatoria)"
	echo "Pulsa 4 para calculadora (Suma/Resta)"
	echo "Pulsa 5 para explorar filtrando os permisos dos arquivos"
	echo "Pulsa 0 para sair"
	read opcion
	case $opcion in
		0)
		sair=0
		;;
		1)
		read -p "Introduce unha ruta de un directorio para explorar (Por exemplo /home/alumno): " ruta1
		for file in $ruta1/*
		do
			echo $file
		done
		echo "Queres realizar outra operación? "
		echo "Para realizar outra operación pulsa 1, para sair pulsa 0"
		read nextoperation
		if [[ nextoperation -eq 0 ]]
		then
			sair=0
			clear
		else
			clear
		fi
		;;
		2)
		read -p "Escribe o nome para dedicar: " nomecorazon
		clear
		echo "PARA $nomecorazon DE PARTE DE $miusuario"
		echo '_________________________________________________________'
		echo '________00000000000___________000000000000_______________'
		echo '______00000000_____00000___00000____00000000_____________'
		echo '____0000000_____________000______________0000000_________'
		echo '___0000000_______________0_________________0000000_______'
		echo '__000000____________________________________000000_______'
		echo '__00000_____________________________________ 00000_______'
		echo '___00000____________________________________00000________'
		echo '____00000__________________________________00000_________'
		echo '_____00000________________________________00000__________'
		echo '______00000______________________________00000___________'
		echo '_______00000____________________________00000____________'
		echo '________00000__________________________00000_____________'
		echo '_________00000________________________00000______________'
		echo '__________00000______________________00000_______________'
		echo '___________00000____________________00000________________'
		echo '____________00000__________________00000_________________'
		echo '_____________00000________________00000__________________'
		echo '_______________00000____________00000____________________'
		echo '________________00000__________00000_____________________'
		echo '_________________00000_______00000_______________________'
		echo '___________________0000_____0000_________________________'
		echo '_____________________000___000___________________________'
		echo '______________________0000000____________________________'
		echo '________________________0000_____________________________'
		echo '_________________________________________________________'
		echo " "
		echo "Para realizar outra operación pulsa 1, para sair pulsa 0"
                read nextoperation
                if [[ nextoperation -eq 0 ]]
		then
                	sair=0
			clear
		else
			clear
		fi
		;;
		3)
		miusuario="$`whoami`"
		echo "O teu usuario chamase $miusuario"
		read -p "Para cambiar o nome do usuario introduce un nome novo a continuación se non desexas cambialo non introduzas ningún valor: " newname
		if [ -z $newname ]
		then
			echo "o nome de usuario non cambiou"
		else
			miusuario=$newname
			echo "O configurouse o novo nome de usuario como $miusuario"
		fi
		echo " "
		echo "Para realizar outra operación pulsa 1, para sair pulsa 0"
		read nextoperation
		if [[ nextoperation -eq 0 ]]
		then
			sair=0
			clear
		else
			clear
		fi
		;;
		4)
		echo "Elixe que operación desexas realizar, escribe S para sumar ou R para restar: "
		read whatdo
		if [[ whatdo -eq S ]]
		then
			echo "Introduce 2 valores numéricos: "
			read valor1
			read valor2
			resultado=$(($valor1 + $valor2))
			echo "O resultado da suma de $valor1 máis $valor2 é $resultado"
		else
			echo "Introduce 2 valores numéricos: "
			read valor1
			read valor2
			resultado=$(($valor1 - $valor2))
			echo "O resultado da resta de $valor1 menos $valor2 é $resultado"
		fi
		echo " "
		echo "Para realizar outra operación pulsa 1, para sair pulsa 0"
		read nextoperation

		if [[ nextoperation -eq 0 ]]
		then
			sair=0
			clear
		else
			clear
		fi
		;;
		5)
		echo "Introduce unha ruta para ver os arquivos con permisos de escritura, lectura o execución: "
		read rutapermisos
		echo "Para os que teñan lectura pulsa r para os de escritura pulsa w e para os de execucion pulsa x: "
		read variablepermisos
		if [[ variablepermisos -eq r ]]
		then
			for file in $rutapermisos/*
			do
				echo "-r $file"
			done
		elif [[ variablepermisos -eq w ]]
		then
			for file in $rutapermisos/*
			do
				echo "-w $file"
			done
		elif [[ variablepermisos -eq x ]]
		then
			for file in $rutapermisos/*
			do
				echo "-x $file"
			done
		fi
		echo ""
		echo "Para realizar outra operación pulsa 1, para sair pulsa 0"
		read nextoperation
		if [[ nextoperation -eq 0 ]]
		then
			sair=0
			clear
		else
			clear
		fi
		;;
	esac
done
