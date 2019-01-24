#!/usr/bin/env bash

#wmctrl -lx | grep -E "xzoom x2" | grep -oE "[0-9a-z]{10}"
#xdotool search --name 'xzoom x2'
#xdotool search --class 'xzoom x2'
#xdotool search --classname 'xzoom x2'


#xprop -name 'xzoom x2' | grep 'window id' | awk '{print $5}'
xwininfo -name 'xzoom x2' | grep 'Window id' | awk '{print $4}'
