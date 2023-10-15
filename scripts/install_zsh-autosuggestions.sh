#!/bin/bash 

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Verificar si la instalación fue exitosa
if [ $? -eq 0 ]; then
    exit 0
else
    exit 1
fi