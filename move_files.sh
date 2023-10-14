#!/bin/bash

# mover archivos del directorio actual a la ubicacion correspondiente 

# configuracion de nano
sudo cp ./linux-files/nanorc /etc/nanorc

# configuracion de git
sudo cp ./linux-files/.gitconfig ~/

# archivo de configuracion para zsh
[ -d ~/.bin ] || mkdir ~/.bin && sudo cp breiner-env.zsh ~/.bin/"$USER"-env.zsh

# configuracion zsh para el usuario actual
sudo cp ./linux-files/.zshrc ~/

# configuracion de starship 
sudo cp ./linux-files/starship.toml ~/.config/

# carpeta configuracion de kitty 
sudo cp ./linux-files/kitty ~/.config/

# profile
sudo cp ./linux-files/.profile ~/