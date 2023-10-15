#!/bin/bash

# Desinstalar Oh My Zsh si ya está instalado
sudo rm -rf ~/.oh-my-zsh

# Instalar Oh My Zsh
yes | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# Verificar si la instalación fue exitosa
if [ $? -eq 0 ]; then
    exit 0
else
    exit 1
fi