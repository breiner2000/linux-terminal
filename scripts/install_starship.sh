#!/bin/sh

# Desinstalar Starship si ya está instalado
starship_path=$(which starship)
if [ -n "$starship_path" ]; then
    echo "Desinstalando Starship existente..."
    sudo rm -f "$starship_path"
fi

# Instalar Starship
echo "Instalando Starship..."
curl -sS https://starship.rs/install.sh | sh -s -- --yes

# Verificar si la instalación fue exitosa
if [ $? -eq 0 ]; then
    exit 0
else
    exit 1
fi