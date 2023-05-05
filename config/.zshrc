# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#Path para pip python
export PATH=$PATH:~/.local/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Fix the Java Problem
export _JAVA_AWT_WM_NONREPARENTING=1

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

#
# Aliases 
# For a full list of active aliases, run `alias`.

alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'
alias cat='bat'
