#!/bin/sh

# Desinstalar Starship si ya está instalado
starship_path=$(which starship)
if [ -n "$starship_path" ]; then
    echo "Desinstalando Starship existente..."
    sudo rm -f "$starship_path"
fi

# Instalar Starship
echo "Instalando Starship..."
sudo wget https://starship.rs/install.sh 

# Ejecutar el script de instalación 
sudo sh install.sh -y

# Eliminar el script de instalación
sudo rm -f install.sh

