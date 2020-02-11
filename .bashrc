
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# load aliases
[[ -f ".alias" ]] && . ~/.alias

# transparent xterm windows
# [ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null
