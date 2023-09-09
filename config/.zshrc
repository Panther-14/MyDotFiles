# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#Path para pip python
export PATH=$PATH:~/.local/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH Current Theme
ZSH_THEME="bira"

#
# Plugins
#

plugins=(git zsh-syntax-highlighting zsh-autosuggestions sudo)

source $ZSH/oh-my-zsh.sh

#
# User configuration
#

pokemon-colorscripts --no-title -r 1,3,6

#
# Aliases 
# For a full list of active aliases, run `alias`.

alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd -lt --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'
alias cat='bat'
alias s="kitty +kitten ssh"
