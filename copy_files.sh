#!/bin/bash

# Copias de archivos al directorio actual

# configuracion de nano
sudo cp /etc/nanorc .

# gitconfig
sudo cp ~/.gitconfig .

# archivo de configuracion para zsh
# contiene variables de entorno, alias y configuracion de zsh
sudo cp ~/.bin/"$USER"-env.zsh .

# configuracion zsh para el usuario actual
sudo cp ~/.zshrc .

# configuracion de starship 
sudo cp ~/.config/starship.toml .

# carpeta configuracion de kitty 
sudo cp -r ~/.config/kitty .

# profile
sudo cp ~/.profile .
