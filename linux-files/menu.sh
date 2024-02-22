#!/bin/bash
# Creado por Alvaro Araya O. coder at aao.cr
# Modificado por Breiner Carranza para uso personal
clear
echo "  ____   _____ _____  ";
echo " |  _ \ / ____|  __ \ ";
echo " | |_) | |    | |__) |";
echo " |  _ <| |    |  ___/ ";
echo " | |_) | |____| |     ";
echo " |____/ \_____|_|     ";
echo "                                                 ";
echo " "

PS3='Opt: '
COLUMNS=125
options=(
    "moovin-vpn"
    "moovin-application-01-int"
    "moovin-containers-principal-int"
    "moovin-database-desarrollo-int"
    "moovin-database-principal-int"
    "moovin-database-replica01-int"
    "moovin-developer-01-int"
    "moovin-application-01"
    "moovin-containers-principal"
    "moovin-database-desarrollo"
    "moovin-database-principal"
    "moovin-database-replica01"
    "moovin-developer-01"
    "moovin-shopify-containers"
    "moovin-backup-aws"
    "moovin-tical-golddata"
    "moovin-tical-americandata"
    "moovin-sap-ld"
    "Salir");

execOption () {
  echo "Ejecutando: $1"
  case $1 in
      "moovin-vpn") ssh bcp@moovin-vpn;;
      "moovin-application-01-int") ssh bcp@moovin-application-01-int;;
      "moovin-containers-principal-int") ssh bcp@moovin-containers-principal-int;;
      "moovin-database-desarrollo-int") ssh bcp@moovin-database-desarrollo-int;;
      "moovin-database-principal-int") ssh bcp@moovin-database-principal-int;;
      "moovin-database-replica01-int") ssh bcp@moovin-database-replica01-int;;
      "moovin-developer-01-int") ssh bcp@moovin-developer-01-int;;
      "moovin-application-01") ssh bcp@moovin-application-01;;
      "moovin-containers-principal") ssh bcp@moovin-containers-principal;;
      "moovin-database-desarrollo") ssh bcp@moovin-database-desarrollo;;
      "moovin-database-principal") ssh bcp@moovin-database-principal;;
      "moovin-database-replica01") ssh bcp@moovin-database-replica01;;
      "moovin-developer-01") ssh bcp@moovin-developer-01;;
      "moovin-shopify-containers") ssh bcp@moovin-shopify-containers;;
      "moovin-backup-aws") ssh bcp@moovin-backup-aws;;
      "moovin-tical-golddata") ssh bcp@moovin-tical-golddata;;
      "moovin-tical-americandata") ssh bcp@moovin-tical-americandata;;
      "moovin-sap-ld") ssh bcp@moovin-sap-ld;;
      "Salir") 				exit;;
      *) echo "Opción inválida";;
  esac
}

if [ -n "$1" ]; then
  # si el número es especificado como argumento no muestra el case
  execOption "${options[$(($1-1))]}"
else
  select opt in "${options[@]}"
  do
    execOption "$opt"
    if [ "$opt" = "Salir" ]; then
      break
    fi
  done
fi