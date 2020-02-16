
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# load aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# include hidden files in autocomplete
_comp_options+=(globdots)

# beam shape cursor on startup
echo -ne '\e[5 q'
# beam shape cursor for each new prompt
preexec() { echo -ne '\e[5 q' ;}

HISTFILE=~/.config/zsh/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd nomatch notify
unsetopt beep
bindkey -e

zstyle :compinstall filename '/home/jim/.zshrc'

autoload -Uz compinit
compinit

export NVM_DIR="$HOME/.local/share/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

