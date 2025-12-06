eval "$(dbus-launch --sh-syntax --exit-with-session)"
export PATH="/usr/bin:$PATH"
exec xmonad
