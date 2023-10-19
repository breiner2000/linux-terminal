#!/bin/sh -e

# Desinstalar Starship si ya está instalado
starship_path=$(which starship)
if [ -n "$starship_path" ]; then
    echo "Desinstalando Starship existente..."
    sudo rm -f "$starship_path"
fi

# Instalar Starship
echo "Instalando Starship..."
sudo curl -S https://starship.rs/install.sh | sudo sh 

