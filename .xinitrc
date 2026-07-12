LOCKFILE="${XDG_RUNTIME_DIR:-/tmp}/dwm-autostart.lock"
rm -f "$LOCKFILE"

while true; do
    dwm >/var/log/dwm.log 2>&1
done

rm -f "$LOCKFILE"
