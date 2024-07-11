#!/bin/sh
setxkbmap tr
killall -q polybar picom
polybar & disown
echo "Polybar launched..."
picom & 
echo "Picom launched..."
