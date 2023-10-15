#!/bin/bash

sudo apt install kitty

# cambiar el emulador terminal predeterminado a kitty 

sudo update-alternatives --set x-terminal-emulator /usr/bin/kitty

# Verificar si la instalación fue exitosa
if [ $? -eq 0 ]; then
    exit 0
else
    exit 1
fi