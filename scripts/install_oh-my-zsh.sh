#!/bin/bash


sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Verificar si la instalación fue exitosa
if [ $? -eq 0 ]; then
    exit 0
else
    exit 1
fi