#!/bin/bash

username=$(whoami)

# Paso 1: Crear el directorio si no existe
sudo mkdir -p /etc/sudoers.d/

# Paso 2: Crear o editar el archivo con el contenido deseado
echo "$username ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$username


# Verificar si la configuración se aplicó correctamente
if [ $? -eq 0 ]; then
    exit 0
else
    exit 1
fi