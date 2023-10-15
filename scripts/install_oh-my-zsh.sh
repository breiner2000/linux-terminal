#!/bin/bash -e

# Desinstalar Oh My Zsh si ya está instalado
sudo rm -rf ~/.oh-my-zsh

# Instalar Oh My Zsh
yes | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


