#!/usr/bin/env bash


#xprop -name "kmag"

#xprop -id $(xdotool search --class 'kmag')

#xprop -id $(wmctrl -lx | grep 'kmag' | awk '{printf $1}')

xprop -id $(xwininfo -name 'KMagnifier' | grep 'Window id' | awk '{print $4}')

