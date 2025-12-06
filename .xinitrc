eval "$(dbus-launch --sh-syntax --exit-with-session)"
export PATH="/usr/bin:$PATH"
export PATH="$HOME/.local/bin:$HOME/.ghcup/bin:$PATH"
exec xmonad
