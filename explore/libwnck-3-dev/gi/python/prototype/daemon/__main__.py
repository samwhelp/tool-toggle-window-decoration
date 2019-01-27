#!/usr/bin/env python3

import gi
gi.require_version('Wnck', '3.0')
from gi.repository import GLib, Wnck

def on_window_opened(screen, window):
	print(window.get_name()) #https://lazka.github.io/pgi-docs/index.html#Wnck-3.0/classes/Window.html#Wnck.Window.get_name

screen = Wnck.Screen.get_default() # https://lazka.github.io/pgi-docs/index.html#Wnck-3.0/classes/Screen.html#Wnck.Screen.get_default
screen.connect('window-opened', on_window_opened) # https://lazka.github.io/pgi-docs/index.html#Wnck-3.0/classes/Screen.html#Wnck.Screen.signals.window_opened

loop = GLib.MainLoop(None) # https://lazka.github.io/pgi-docs/index.html#GLib-2.0/classes/MainLoop.html#GLib.MainLoop
loop.run()


# https://stackoverflow.com/questions/52507732/python-wnck-gnome-3
