#!/bin/bash

# Instalar fuentes

./scripts/install-font.sh
font_res=$?

# Verificar el código de salida y actuar en consecuencia
if [ "$font_res" -eq 0 ]; then
    echo -e "\e[1;32m
    Nerd Font ha sido instalada.
    \e[0m"
else
    echo -e "\e[1;31m
    Error al instalar Nerd Font.
    \e[0m"
fi