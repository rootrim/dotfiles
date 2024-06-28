#!/bin/sh
setxkbmap tr
killall -q polybar
polybar & disown
echo "Polybar launched..."
picom -b 
echo "Picom launched..."
