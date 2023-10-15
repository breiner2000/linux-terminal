#!/bin/bash

# Instalar Zsh
sudo apt install curl wget zsh -y

# Cambiar el shell a Zsh para el usuario actual y para root
sudo usermod -s $(which zsh) $USER
sudo usermod -s $(which zsh) root

# Verificar si las acciones se ejecutaron correctamente
if [ $? -eq 0 ]; then
    exit 0
else
    exit 1
fi