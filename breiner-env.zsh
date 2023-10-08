# variables de entorno para zsh
# source "/home/xyz/.bin/xyz-env.zsh"
export JAVA_HOME="/opt/jdk-17"
export GRADLE_HOME="/opt/gradle"
export MAVEN_HOME="/opt/maven"
export NODE_HOME="/opt/node"
export MTR_OPTIONS="-4noLSRDBAWVJMX"
export NMON="cmndl"
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$MAVEN_HOME/bin:$PATH
export PATH=$NODE_HOME/bin:$PATH
export PATH=/home/$USER/.bin:$PATH
export PAGER="/usr/bin/most -s"

# Starship Config
export HIST_STAMPS="yyyy-mm-dd"
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt appendhistory

# ngrok
export PATH=$PATH:/home/$USER/.ngrok

# Alias for exa
alias ls='exa --icons' 
alias l='exa --grid --all --icons'

alias ll='exa --all --long --no-user --no-filesize --header'
alias lt='exa --tree --level=2'

# Alias for neofetch
alias neofetch='neofetch --source ~/.config/neofetch/hunter'


# Alias for normal commands 
alias c='clear'