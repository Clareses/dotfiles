#!bash
#

if [ $(xrandr | grep -v disconnected | grep connected -c) -eq 2 ]
then
    `xrandr --output HDMI-A-0 --primary --output eDP --off`
else
    `xrandr --output eDP --primary`
fi
#!bash

if [ $(xrandr | grep -v disconnected | grep connected -c) -eq 2 ]
then
    `xrandr --output HDMI-A-0 --primary --output eDP --off; xrandr -s 1920x1080`
else
    `xrandr --output eDP --primary`
fi
