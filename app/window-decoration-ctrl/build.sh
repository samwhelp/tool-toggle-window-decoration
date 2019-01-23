#!/usr/bin/env bash

# gcc toggle-decorations.c -Wall -o toggle-decorations `pkg-config --cflags --libs x11`

gcc window-decoration-ctrl.c -Wall -o window-decoration-ctrl `pkg-config --cflags --libs x11`
