#!/bin/bash

# Creacion de directorios
sudo mkdir -p linux-files/kitty

# configuracion de nano
sudo cp /etc/nanorc ./linux-files/

# gitconfig
sudo cp ~/.gitconfig ./linux-files/

# archivo de configuracion para zsh
# contiene variables de entorno, alias y configuracion de zsh
sudo cp ~/.bin/"$USER"-env.zsh ./linux-files/

# configuracion zsh para el usuario actual
sudo cp ~/.zshrc ./linux-files/

# configuracion de starship 
sudo cp ~/.config/starship.toml ./linux-files/

# tema y configuracion de kitty
sudo cp -r ~/.config/kitty/kitty.conf ~/.config/kitty/current-theme.conf ./linux-files/kitty/

# profile
sudo cp ~/.profile ./linux-files/
