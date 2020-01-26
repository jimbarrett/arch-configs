#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$SSH_AUTH_SOCK" ] ; then
	eval `ssh-agent -s`
	ssh-add ~/.ssh/*_rsa
fi

export PATH="$(du $HOME/.local/bin/ | cut -f2 | tr '\n' ':')$PATH"

