#!/bin/bash

# mover archivos del directorio actual a la ubicacion correspondiente 

# configuracion de nano
sudo mv nanorc /etc/nanorc

# configuracion de git
sudo mv .gitconfig ~/

# archivo de configuracion para zsh
sudo mv breiner-env.zsh ~/.bin/"$USER"-env.zsh

# configuracion zsh para el usuario actual
sudo mv .zshrc ~/

# configuracion de starship 
sudo mv starship.toml ~/.config/

# carpeta configuracion de kitty 
sudo mv kitty ~/.config/

# profile
sudo mv .profile ~/