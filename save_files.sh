#!/bin/bash

# Colores
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No color

# Creacion de directorios para kitty
sudo mkdir -p linux-files/kitty
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Directorios creados con éxito.${NC}"
else
    echo -e "${RED}Error al crear directorios.${NC}"
    exit 1
fi

# configuracion de nano
sudo cp /etc/nanorc ./linux-files/
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Configuración de nano copiada con éxito.${NC}"
else
    echo -e "${RED}Error al copiar configuración de nano.${NC}"
    exit 1
fi

# gitconfig
sudo cp ~/.gitconfig ./linux-files/
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Archivo gitconfig copiado con éxito.${NC}"
else
    echo -e "${RED}Error al copiar archivo gitconfig.${NC}"
    exit 1
fi

# archivo de configuracion para zsh
# contiene variables de entorno, alias y configuracion de zsh
sudo cp ~/.bin/"$USER"-env.zsh ./linux-files/
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Archivo de configuración para zsh copiado con éxito.${NC}"
else
    echo -e "${RED}Error al copiar archivo de configuración para zsh.${NC}"
    exit 1
fi

# configuracion zsh para el usuario actual
sudo cp ~/.zshrc ./linux-files/
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Configuración zsh copiada con éxito.${NC}"
else
    echo -e "${RED}Error al copiar configuración zsh.${NC}"
    exit 1
fi

# configuracion de starship 
sudo cp ~/.config/starship.toml ./linux-files/
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Configuración de Starship copiada con éxito.${NC}"
else
    echo -e "${RED}Error al copiar configuración de Starship.${NC}"
    exit 1
fi

# tema y configuracion de kitty
sudo cp -r ~/.config/kitty/kitty.conf ~/.config/kitty/current-theme.conf ./linux-files/kitty/
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Tema y configuración de Kitty copiados con éxito.${NC}"
else
    echo -e "${RED}Error al copiar tema y configuración de Kitty.${NC}"
    exit 1
fi

# profile
sudo cp ~/.profile ./linux-files/
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Archivo profile copiado con éxito.${NC}"
else
    echo -e "${RED}Error al copiar archivo profile.${NC}"
    exit 1
fi

echo -e "${GREEN}Todas las copias se realizaron con éxito.${NC}"