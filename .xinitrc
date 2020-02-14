[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

. /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

exec i3
