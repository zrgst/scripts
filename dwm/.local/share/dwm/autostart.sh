#!/bin/bash

# 1. System og D-Bus (Viktig for Arch/systemd)
dbus-update-activation-environment --systemd --all &
/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &

# 2. Skjerm og Grafikk
# Sørg for at picom starter med b-flagget (bakgrunn)
picom -b &
feh --randomize --bg-fill ~/Pictures/wallpapers/* &

# 3. Utility
dunst &
flameshot &

# Dreper gamle instanser og starter slstatus 'fresh'
killall mpd_status slstatus 2>/dev/null
killall mpc; mpc &
mpd_status &
slstatus &

# 4. Spesifikt for stasjonær/NVIDIA (Valgfritt)
# Hvis du har flere skjermer, kan du legge til xrandr-oppsett her
# xrandr --output DP-0 --primary --mode 2560x1440 --rate 144 --output HDMI-0 --right-of DP-0 &
