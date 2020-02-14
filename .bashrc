
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# load aliases
[[ -f ".alias" ]] && . ~/.alias

# transparent xterm windows
# [ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null

export NVM_DIR="$HOME/.local/share/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
