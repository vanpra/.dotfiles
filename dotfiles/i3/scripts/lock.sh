#!/bin/bash
scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
[[ -f $1 ]] && convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png
OUTPUT=$(playerctl status 2>&1)
if [ "$OUTPUT" == "Paused" ]
then
  i3lock -u -i /tmp/screen.png -n
else
  playerctl pause
  i3lock -u -i /tmp/screen.png -n
  playerctl play
fi
rm /tmp/screen.png
