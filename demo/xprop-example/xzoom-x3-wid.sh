#!/usr/bin/env bash

#wmctrl -lx | grep -E "xzoom x3" | grep -oE "[0-9a-z]{10}"
#xdotool search --name 'xzoom x3'
#xdotool search --class 'xzoom x3'
#xdotool search --classname 'xzoom x3'


#xprop -name 'xzoom x3' | grep 'window id' | awk '{print $5}'
xwininfo -name 'xzoom x3' | grep 'Window id' | awk '{print $4}'
