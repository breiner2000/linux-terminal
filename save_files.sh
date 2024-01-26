#!/bin/bash

# Colores
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No color

# Función para copiar con mensaje de éxito o error
copy_file() {
    source_file=$1
    destination=$2
    
    # Asegurarse de que el destino sea un directorio
    if [ -d "$destination" ]; then
        # Concatenar el nombre del archivo al destino
        destination="${destination%/}/$(basename "$source_file")"
    else
        echo -e "${RED}Error: $destination no es un directorio.${NC}"
        exit 1
    fi

    sudo cp -r "$source_file" "$destination"
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}Archivo $source_file copiado con éxito a $destination.${NC}"
    else
        echo -e "${RED}Error al copiar $source_file a $destination.${NC}"
        exit 1
    fi
}

# Crear directorios para kitty
sudo mkdir -p linux-files/kitty
copy_file /etc/nanorc ./linux-files/                   # Configuración de nano
copy_file ~/.gitconfig ./linux-files/                   # gitconfig
copy_file ~/.bin/"$USER"-env.zsh ./linux-files/         # Archivo de configuración para zsh
copy_file ~/.zshrc ./linux-files/                       # Configuración zsh para el usuario actual
copy_file ~/.config/starship.toml ./linux-files/        # Configuración de Starship
copy_file ~/.config/kitty/kitty.conf ./linux-files/kitty # Tema y configuración de Kitty
copy_file ~/.config/kitty/current-theme.conf ./linux-files/kitty # Tema y configuración de Kitty
copy_file ~/.profile ./linux-files/                     # Profile

echo -e "${GREEN}Todas las copias se realizaron con éxito.${NC}"