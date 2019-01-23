#!/usr/bin/env bash

sudo apt-get install libx11-dev

# dpkg -L libx11-dev | grep pc
# /usr/lib/x86_64-linux-gnu/pkgconfig/x11.pc

# pkg-config --cflags --libs x11
# -lX11

# pkg-config --list-all | grep x11
# pkg-config --list-all | grep '^x11 '


