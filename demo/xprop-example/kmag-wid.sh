#!/usr/bin/env bash

#wmctrl -lx | grep -E "kmag" | grep -oE "[0-9a-z]{10}"
#xdotool search --name 'kmag'
#xdotool search --class 'kmag'
#xdotool search --classname 'kmag'


#xprop -name 'kmag' | grep 'window id' | awk '{print $5}'
xwininfo -name 'kmag' | grep 'Window id' | awk '{print $4}'
