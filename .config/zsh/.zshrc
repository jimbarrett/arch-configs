autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# load aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# beam shape cursor on startup
echo -ne '\e[5 q'
# beam shape cursor for each new prompt
preexec() { echo -ne '\e[5 q' ;}

HISTFILE=~/.cache/zsh/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd nomatch notify
unsetopt beep
bindkey -e

zstyle :compinstall filename '/home/barrett/.config/zsh/.zshrc'

autoload -Uz compinit
compinit
_comp_options+=(globdots)
