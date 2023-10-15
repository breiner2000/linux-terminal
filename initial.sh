#!/bin/bash

# Instalar fuentes

./scripts/install_firacode.sh
font_res=$?

./scripts/config_admin_user.sh
sudo_res=$?

./scripts/install_zsh.sh
zsh_res=$?

./scripts/install_oh-my-zsh.sh
ohmyzsh_res=$?

./scripts/install_zsh-autosuggestions.sh
zsh_autosuggestions_res=$?

./scripts/install_starship.sh
starship_res=$?

./scripts/install_kitty.sh
kitty_res=$?


# Verificar el código de salida y actuar en consecuencia
if [ "$font_res" -eq 0 ]; then
    echo -e "\e[1;32m Fira Code Nerd Font ha sido instalada.
    \e[0m"
else
    echo -e "\e[1;31m Error al instalar Fira Code Nerd Font.
    \e[0m"
fi

if [ "$sudo_res" -eq 0 ]; then
    echo -e "\e[1;32m El usuario $USER ha sido configurado como administrador.
    \e[0m"
else
    echo -e "\e[1;31m Error al configurar el usuario $USER como administrador.
    \e[0m"
fi

if [ "$zsh_res" -eq 0 ]; then
    echo -e "\e[1;32m Los paquetes Zsh, curl, wget most y exa han sido instalados.
    \e[0m"
else
    echo -e "\e[1;31m Error al instalar Zsh, curl, wget most o exa.
    \e[0m"
fi

if [ "$ohmyzsh_res" -eq 0 ]; then
    echo -e "\e[1;32m Oh My Zsh ha sido instalado.
    \e[0m"
else
    echo -e "\e[1;31m Error al instalar Oh My Zsh.
    \e[0m"
fi

if [ "$zsh_autosuggestions_res" -eq 0 ]; then
    echo -e "\e[1;32m Zsh Autosuggestions ha sido instalado.
    \e[0m"
else
    echo -e "\e[1;31m Error al instalar Zsh Autosuggestions.
    \e[0m"
fi

if [ "$starship_res" -eq 0 ]; then
    echo -e "\e[1;32m Starship ha sido instalado.
    \e[0m"
else
    echo -e "\e[1;31m Error al instalar Starship.
    \e[0m"
fi

if [ "$kitty_res" -eq 0 ]; then
    echo -e "\e[1;32m Kitty ha sido instalado.
    \e[0m"
else
    echo -e "\e[1;31m Error al instalar Kitty.
    \e[0m"
fi