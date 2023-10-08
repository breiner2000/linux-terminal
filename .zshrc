export ZSH_DISABLE_COMPFIX=true
export ZSH="$HOME/.oh-my-zsh"
# Deshabilitar el tema de oh-my-zsh, para usar starship
ZSH_THEME=""
plugins=(git zsh-autosuggestions aliases)
source $ZSH/oh-my-zsh.sh
source "/home/$USER/.bin/$USER-env.zsh"
eval "$(starship init zsh)"
export PATH=$PATH:/home/$USER/.spicetify