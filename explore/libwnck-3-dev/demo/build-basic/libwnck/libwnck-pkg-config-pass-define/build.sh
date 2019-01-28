#!/usr/bin/env bash

#gcc main.c -o demo $(pkg-config libwnck-3.0 --cflags --libs)
gcc main.c -o demo -D WNCK_I_KNOW_THIS_IS_UNSTABLE `pkg-config libwnck-3.0 --cflags --libs`
