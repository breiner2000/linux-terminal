# Configuración de terminal :)

Archivos de configuración importantes de mi entorno de trabajo y la configuración de la terminal desde 0.

## Instalar herramientas

> No ejecutar los archivos como sudo

Al ejecutar el script `./initial.sh` se instalara y configurara lo siguiente:

- Permitir al usuario actual ejecutar comandos como admin sin necesidad de contraseñas
- FiraCode Nerd Font v3.0.2
- Los paquetes `curl`, `wget`, `zsh`, `most`, `exa`
- Se cambiará el shell a **Zsh** para el usuario actual y para el root
- Instalación de **Oh my zsh**
- Instalación de **Starship**
- Instalación de **Kitty** y cambiar el emulador predeterminado a este

## Copiar archivos de configuración al entorno

Utilizar `./move_files.sh` para copiar los archivos de configuración a sus respectivos directorios. Archivos de configuración:

- nanorc
- .gitconfig
- .zshrc
- `$USER`-env.zsh
- starship.toml
- .profile
- kitty

## Copiar archivos de configuración para guardarlos

Utilizar `./copy_files` si se quieren copiar los archivos de configuración anteriormente mencionados a la carpeta _linux-files_ para ser utilizados con el `./move_files` en el mismo equipo o en otro.

> Nota: Esto serviría como backup de los archivos de configuración.
