#!/usr/bin/env bash

################################################################################
# https://wiki.gnome.org/Projects/Vala/GTKSample
# valac --pkg gtk+-3.0 gtk-hello.vala
# valac --help
# man valac
# https://valadoc.org/libwnck-3.0/Wnck.Screen.html
################################################################################

valac --pkg gtk+-3.0 --pkg libwnck-3.0 -X "-D WNCK_I_KNOW_THIS_IS_UNSTABLE" -o demo main.vala
