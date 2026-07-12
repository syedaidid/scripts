#!/bin/bash

LOCKFILE="${XDG_RUNTIME_DIR:-/tmp}/dwm-autostart.lock"

# If the lock exists, autostart already ran this session — just exit.
if [ -e "$LOCKFILE" ]; then
    exit 0
fi
touch "$LOCKFILE"

dwmblocks &
pgrep -x sxhkd > /dev/null || sxhkd &
picom --config ~/.config/picom.conf &
nitrogen --restore &
xss-lock --transfer-sleep-lock -- i3lock -i ~/Pictures/wall/3.png --nofork &
xidlehook --not-when-audio --timer 600 'systemctl suspend' '' &
xset s on &
xset s 600 &
xset -dpms &
killall greenclip; greenclip daemon &
xinput set-prop 8 344 -0.4
