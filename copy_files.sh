#!/bin/bash

# Colores
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No color

# Función para copiar con mensaje de éxito o error
copy_with_message() {
    source_file=$1
    destination=$2
    
    sudo cp -r $source_file $destination
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}Archivo $source_file copiado con éxito a $destination.${NC}"
    else
        echo -e "${RED}Error al copiar $source_file a $destination.${NC}"
        exit 1
    fi
}

# configuracion de nano
copy_with_message "./linux-files/nanorc" "/etc/nanorc"

# configuracion de git
sudo cp ./linux-files/.gitconfig ~/

# configuracion zsh con la extension -env.zsh en el directorio .bin con el nombre del usuario actual
[ -d ~/.bin ] || mkdir ~/.bin
file=$(find "./linux-files" -maxdepth 1 -type f -name '*-env.zsh')
copy_with_message "$file" "~/.bin/$USER-env.zsh"

# configuracion zsh para el usuario actual
copy_with_message "./linux-files/.zshrc" "~"

# configuracion de starship 
copy_with_message "./linux-files/starship.toml" "~/.config/"

# carpeta configuracion de kitty 
copy_with_message "./linux-files/kitty" "~/.config/"

# profile
copy_with_message "./linux-files/.profile" "~"

echo -e "${GREEN}Todas las copias se realizaron con éxito.${NC}"