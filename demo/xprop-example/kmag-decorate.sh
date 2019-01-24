#!/usr/bin/env bash

# https://askubuntu.com/questions/928226/xprop-fails-to-undecorate-window

#xprop -name "kmag" -f _MOTIF_WM_HINTS 32c -set _MOTIF_WM_HINTS "0x2, 0x0, 0x1, 0x0, 0x0"
xprop -id $(xwininfo -name 'KMagnifier' | grep 'Window id' | awk '{print $4}') -f _MOTIF_WM_HINTS 32c -set _MOTIF_WM_HINTS "0x2, 0x0, 0x1, 0x0, 0x0"


#xprop -name 'kmag' | grep _MOTIF_WM_HINTS
xprop -id $(xwininfo -name 'KMagnifier' | grep 'Window id' | awk '{print $4}') | grep _MOTIF_WM_HINTS
