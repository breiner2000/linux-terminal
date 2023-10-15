#!/bin/bash

curl -sS https://starship.rs/install.sh | sh

# Verificar si la instalación fue exitosa
if [ $? -eq 0 ]; then
    exit 0
else
    exit 1
fi