#!/usr/bin/env bash

gcc main.c -o demo $(pkg-config gtk+-3.0 --libs --cflags)
#gcc main.c -o demo `pkg-config gtk+-3.0 --libs --cflags`
