#!/bin/bash -e

sudo apt install kitty -y

# cambiar el emulador terminal predeterminado a kitty 

sudo update-alternatives --set x-terminal-emulator /usr/bin/kitty

