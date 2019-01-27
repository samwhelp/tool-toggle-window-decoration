#!/usr/bin/env bash

#gcc main.c -o demo $(pkg-config libwnck-3.0 --cflags --libs)
gcc main.c -o demo `pkg-config libwnck-3.0 --cflags --libs`
