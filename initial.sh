#!/bin/bash

# Instalar fuentes

./scripts/install_font.sh
font_res=$?

./scripts/config_admin_user.sh
sudo_res=$?

./scripts/install_zsh.sh
zsh_res=$?

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

if [ "$sudo_res" -eq 0 ]; then
    echo -e "\e[1;32m
    El usuario $USER ha sido configurado como administrador.
    \e[0m"
else
    echo -e "\e[1;31m
    Error al configurar el usuario $USER como administrador.
    \e[0m"
fi

if [ "$zsh_res" -eq 0 ]; then
    echo -e "\e[1;32m
    Zsh ha sido instalado.
    \e[0m"
else
    echo -e "\e[1;31m
    Error al instalar Zsh.
    \e[0m"
fi