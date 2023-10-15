#!/bin/bash

# Directorio local de fuentes
font_dir="$HOME/.local/share/fonts/"

mkdir -p "$font_dir"

wget -O nerd_font.zip "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip"

# Verificar si la descarga fue exitosa
if [ $? -eq 0 ]; then
    unzip nerd_font.zip -d "$font_dir"
    rm nerd_font.zip

    # Actualizar la caché de fuentes
    fc-cache -f -v

    echo "La fuente Nerd Font ha sido instalada correctamente en el directorio local de fuentes."
else
    echo "Error al descargar la fuente Nerd Font."
fi