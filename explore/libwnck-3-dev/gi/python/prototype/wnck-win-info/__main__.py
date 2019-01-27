#!/usr/bin/env python3

import gi
gi.require_version('Wnck', '3.0')
from gi.repository import GLib, Wnck


def on_window_opened(screen, window):

	print("application_name: {application_name}\nwindow_name: {window_name}\nwindow_class: {window_class}\nwindow_xid: {window_xid}\n".format(
		window_xid=window.get_xid(), # https://lazka.github.io/pgi-docs/index.html#Wnck-3.0/classes/Window.html#Wnck.Window.get_xid
		window_class=window.get_class_group_name(), # https://lazka.github.io/pgi-docs/index.html#Wnck-3.0/classes/Window.html#Wnck.Window.get_class_group_name
		application_name=window.get_application().get_name(), # https://lazka.github.io/pgi-docs/index.html#Wnck-3.0/classes/Window.html#Wnck.Window.get_application
		window_name=window.get_name() # https://lazka.github.io/pgi-docs/index.html#Wnck-3.0/classes/Window.html#Wnck.Window.get_name
	))

	loop.quit() # https://lazka.github.io/pgi-docs/index.html#GLib-2.0/classes/MainLoop.html#GLib.MainLoop.quit


if __name__ == '__main__':
	screen = Wnck.Screen.get_default() # https://lazka.github.io/pgi-docs/index.html#Wnck-3.0/classes/Screen.html#Wnck.Screen.get_default
	screen.connect('window-opened', on_window_opened) # https://lazka.github.io/pgi-docs/index.html#Wnck-3.0/classes/Screen.html#Wnck.Screen.signals.window_opened

	loop = GLib.MainLoop(None) # https://lazka.github.io/pgi-docs/index.html#GLib-2.0/classes/MainLoop.html#GLib.MainLoop
	loop.run()
