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


# configuracion de nano
copy_file ./linux-files/nanorc /etc

# configuracion de git
copy_file ./linux-files/.gitconfig ~/

# configuracion zsh con la extension -env.zsh en el directorio .bin con el nombre del usuario actual
[ -d ~/.bin ] || mkdir ~/.bin
file=$(find "./linux-files" -maxdepth 1 -type f -name '*-env.zsh')
mv "./linux-files/$file" "./linux-files/$USER-env.zsh"
copy_file "./linux-files/$USER-env.zsh" ~/.bin/

# configuracion zsh para el usuario actual
copy_file ./linux-files/.zshrc ~/

# configuracion de starship 
copy_file ./linux-files/starship.toml ~/.config/

# carpeta configuracion de kitty 
copy_file ./linux-files/kitty ~/.config/

# profile
copy_file ./linux-files/.profile ~/

echo -e "${GREEN}Todas las copias se realizaron con éxito.${NC}"