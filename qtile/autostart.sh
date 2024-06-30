#!/bin/sh
setxkbmap tr
killall -q polybar picom
polybar & disown
echo "Polybar launched..."
picom -b 
echo "Picom launched..."
