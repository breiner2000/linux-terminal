#!/bin/bash -e

# Crear el directorio si no existe
sudo mkdir -p /etc/sudoers.d/

# Crear o editar el archivo con el contenido deseado
echo "$USER ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$USER