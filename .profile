#
# ~/.profile
# loads on log in
#

PS1='[\u@\h \W]\$ '

# subsequent terminals should use zsh
export SHELL=/bin/zsh

# default programs
export EDITOR="nvim"
export TERMINAL="xterm"
export BROWSER="google-chrome-stable"
export FILE="ranger"

# clean up stuff
export WGETRC="$HOME/.config/wget/wgetrc"
export LESSHISTFILE="-"

if [ -z "$SSH_AUTH_SOCK" ] ; then
	eval `ssh-agent -s`
	ssh-add ~/documents/.ssh/*_rsa
fi

export PATH="$(du $HOME/.local/bin/ | cut -f2 | tr '\n' ':')$PATH"
