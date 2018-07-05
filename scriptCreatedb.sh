#!/bin/bash
clear
echo "######################################################################################"
echo "Script de bash"
echo "Maquina/Server: $HOSTNAME"
echo "shell: $SHELL"
echo "Creación de una base de datos en SQL server usando parametros recibidos"
echo "######################################################################################"
echo "! Atención ! las variables de entorno y PATH's varian según su plataforma! "
plat="$(uname -s)"
case "${plat}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
echo "Hemos intentado detectar su plataforma: $machine"
echo "--------------------------------------------------------------------------------------"
#progama
echo "Acceso al servidor"
echo "Ingresa el nombre del servidor SQL: "
read server
echo "Con que usuario quieres conectar al $server:"
read usuario
echo "Ingresa la contraseña de $usuario SQL"
sqlcmd -S $server -U $usuario -p
if [ $? -ne "0" ]; then
	echo "Ups! Algo ha ido mal al realizar la conexión con $server"
	exit 1
else:

	echo "Conexion exitosa"
	echo "c"
fi
