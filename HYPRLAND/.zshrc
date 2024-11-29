# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
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

#
# Path para cargo
#
export PATH=$PATH:$HOME/.cargo/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#
# ZSH Current Theme
#

#ZSH_THEME="bira"

if [[ -n $DISPLAY ]]; then
    source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
else
    ZSH_THEME="bira"
fi


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

#pokemon-colorscripts --no-title -r 1,3,6

#
# Aliases 
# For a full list of active aliases, run `alias`.
alias cat='bat'

alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd -lt --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'
alias {c,cls}='clear && pokemon-colorscripts -r 1,3,6 --no-title'
alias s="kitty +kitten ssh"
alias lord="clear && sudo su"
alias neo="clear && neofetch"
alias img="kitty +kitten icat"
alias rb="sudo modprobe -r btusb && sudo modprobe btusb"
alias update="paru -Syu --nocombinedupgrade"
alias purge="pacman -Rsn $(pacman -Qdtq)"
alias todo="nvim +sil\ /^##\ $(date +%A) +noh +norm\ zz ~/Documentos/TODO.md"
alias {dot,dotfiles}="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"


bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zshfire


# Finalize Powerlevel10k instant prompt. Should stay at the bottom of ~/.zshrc.
(( ! ${+functions[p10k-instant-prompt-finalize]} )) || p10k-instant-prompt-finalize
