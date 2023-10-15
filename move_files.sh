#!/bin/bash

# copiar archivos del directorio actual a la ubicacion correspondiente 

# configuracion de nano
sudo cp ./linux-files/nanorc /etc/nanorc

# configuracion de git
sudo cp ./linux-files/.gitconfig ~/

# copia el archivo de configuracion .zsh con la extension -env.zsh en el directorio .bin con el nombre del usuario actual
[ -d ~/.bin ] || mkdir ~/.bin && file=$(find ./linux-files -maxdepth 1 -type f -name '*-env.zsh') && sudo cp "$file" ~/.bin/"$USER"-env.zsh

# configuracion zsh para el usuario actual
sudo cp ./linux-files/.zshrc ~/

# configuracion de starship 
sudo cp ./linux-files/starship.toml ~/.config/

# carpeta configuracion de kitty 
sudo cp ./linux-files/kitty ~/.config/

# profile
sudo cp ./linux-files/.profile ~/