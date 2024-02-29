# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#
# Path para pip python
#
export PATH=$PATH:~/.local/bin:~/.local/share/pipx/venvs

#
# Path para dotnet
#
export PATH=$PATH:$HOME/.dotnet/tools

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#
# ZSH Current Theme
#
ZSH_THEME="bira"

#
# Plugins
#

plugins=(git zsh-syntax-highlighting zsh-autosuggestions sudo)

source $ZSH/oh-my-zsh.sh
#
# Custom Functions
#

# Settarget

function settarget(){
	if [ $# -eq 1 ]; then
    echo $1 > ~/.config/bspwm/scripts/target
	elif [ $# -gt 2 ]; then
    echo "settarget [IP] [NAME] | settarget [IP]"
	else
    echo $1 $2 > ~/.config/bspwm/scripts/target
	fi
}

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
alias {c,cls}='clear && pokemon-colorscripts --name fletchling --no-title'
alias s="kitty +kitten ssh"
alias lord="clear && sudo su"
alias neo="clear && neofetch"
alias img="kitty +kitten icat"
alias rb="sudo modprobe -r btusb && sudo modprobe btusb"
alias update="paru -Syu --nocombinedupgrade"
alias purge="pacman -Rsn $(pacman -Qdtq)"
alias todo="nvim +sil\ /^##\ $(date +%A) +noh +norm\ zz ~/Documentos/TODO.md"
alias {dot,dotfiles}="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

