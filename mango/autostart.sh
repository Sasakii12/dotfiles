#! /bin/bash

set +e

systemctl --user restart xdg-desktop-portal &

/usr/lib/xdg-desktop-portal-wlr >/dev/null 2>&1 &

# fast launch on GTK/Qt apps
fc-cache -f &
gtk-update-icon-cache -q &

# notifications daemon
swaync &
# night light
wlsunset -T 3501 -t 3500 &
# bar
waybar -c ~/.config//waybar/config.jsonc -s ~/.config//waybar/style.css &

# keep clipboard content
wl-clip-persist --clipboard regular --reconnect-tries 0 &

# clipboard content manager
wl-paste --type text --watch cliphist store &

swaybg -i ~/Downloads/066.jpg -m fill &
# polkit (auth)
if ! pgrep -x "xfce-polkit" >/dev/null; then
  /usr/lib/xfce-polkit/xfce-polkit &
fi
