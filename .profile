#
# ~/.profile
# loads on log in
#

# load aliases
[[ -f "$HOME/alias" ]] && \. "HOME/.alias"

PS1='[\u@\h \W]\$ '

# default programs
export EDITOR="nvim"
export TERMINAL="xterm"
export BROWSER="brave"
export FILE="ranger"

# clean up stuff
export WGETRC="$HOME/.config/wget/wgetrc"
export LESSHISTFILE="-"

if [ -z "$SSH_AUTH_SOCK" ] ; then
	eval `ssh-agent -s`
	ssh-add ~/documents/.ssh/*_rsa
fi

export NVM_DIR="$HOME/.local/share/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PATH="$(du $HOME/.local/bin/ | cut -f2 | tr '\n' ':')$PATH"
