#!/bin/bash

#  con && \ se encadenan los comandos para que se ejecuten uno tras otro

# Instalar Zsh y otros paquetes necesarios
sudo apt install curl wget zsh most exa -y 

# Cambiar el shell a Zsh para el usuario actual y para root
sudo usermod -s $(which zsh) $USER 
sudo usermod -s $(which zsh) root

