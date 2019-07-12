#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

VISUAL=nvim; 
export VISUAL
EDITOR=nvmi;
export EDITOR

# set aliases
alias nv="nvim"
alias chrome="google-chrome-stable"
alias up="sudo pacman -Syu"

