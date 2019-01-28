#!/usr/bin/env python3

import gi
gi.require_version('Gtk', '3.0')
gi.require_version('Wnck', '3.0')
from gi.repository import GLib, Gtk, Wnck


def on_window_opened(screen, window):

	if window.get_class_group_name() == 'Mousepad':
		#https://lazka.github.io/pgi-docs/index.html#Wnck-3.0/classes/Window.html#Wnck.Window.move_to_workspace
		#https://lazka.github.io/pgi-docs/index.html#Wnck-3.0/classes/Screen.html#Wnck.Screen.get_workspace
		window.move_to_workspace(window.get_screen().get_workspace(3))


	loop.quit() # https://lazka.github.io/pgi-docs/index.html#GLib-2.0/classes/MainLoop.html#GLib.MainLoop.quit


if __name__ == '__main__':

	# https://lazka.github.io/pgi-docs/index.html#Gtk-3.0/functions.html#Gtk.init
	# https://lazka.github.io/pgi-docs/index.html#Gdk-3.0/functions.html#Gdk.init
	Gtk.init(None);

	screen = Wnck.Screen.get_default() # https://lazka.github.io/pgi-docs/index.html#Wnck-3.0/classes/Screen.html#Wnck.Screen.get_default
	screen.connect('window-opened', on_window_opened) # https://lazka.github.io/pgi-docs/index.html#Wnck-3.0/classes/Screen.html#Wnck.Screen.signals.window_opened

	loop = GLib.MainLoop(None) # https://lazka.github.io/pgi-docs/index.html#GLib-2.0/classes/MainLoop.html#GLib.MainLoop
	loop.run()
