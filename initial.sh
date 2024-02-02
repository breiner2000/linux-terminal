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


print_status() {
    if [ "$1" -eq 0 ]; then
        echo -e "\e[1;32m $2
        \e[0m"
    else
        echo -e "\e[1;31m $3
        \e[0m"
    fi
}

# Imprimir el estado de la instalación
print_status $font_res "Fira Code Nerd Font ha sido instalada." "Error al instalar Fira Code Nerd Font."
print_status $sudo_res "El usuario $USER ha sido configurado como administrador." "Error al configurar el usuario $USER como administrador."
print_status $zsh_res "Los paquetes Zsh, curl, wget most y exa han sido instalados." "Error al instalar Zsh, curl, wget most o exa."
print_status $ohmyzsh_res "Oh My Zsh ha sido instalado." "Error al instalar Oh My Zsh."
print_status $zsh_autosuggestions_res "Zsh Autosuggestions ha sido instalado." "Error al instalar Zsh Autosuggestions."
print_status $starship_res "Starship ha sido instalado." "Error al instalar Starship."
print_status $kitty_res "Kitty ha sido instalado." "Error al instalar Kitty."
