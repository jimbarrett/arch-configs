#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --group-directories-first'
alias lsa='ls -al --color=auto --group-directories-first'

PS1='[\u@\h \W]\$ '

export VISUAL="nvim"
export WGETRC="$HOME/.config/wget/wgetrc"

# set aliases
alias nv="nvim"
alias up="sudo pacman -Syu"

# transparent xterm windows
# [ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
