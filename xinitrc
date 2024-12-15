#!/bin/bash
# Set locale
export LANG=tr_TR.UTF-8
export LC_ALL=tr_TR.UTF-8

# Start essential services
/usr/lib/polkit-kde-authentication-agent-1 &
dunst &
clipmenud &

# Set wallpaper
feh --bg-scale ~/dotfiles/wallpapers/tardis.jpg &

# Start compositor
picom --experimental-backends &

# Start AwesomeWM
exec i3
