#!/usr/bin/env gjs

imports.gi.versions.Gtk = '3.0';
imports.gi.versions.Gdk = '3.0';

//print(imports.gi.versions.Gdk)

const Gdk = imports.gi.Gdk;
const Gtk = imports.gi.Gtk;
const GLib = imports.gi.GLib;
const Wnck = imports.gi.Wnck;


Gtk.init(null);


let on_window_opened = function (screen, window) {

	/*
	print("application_name:", window.get_application().get_name());
	print("window_name:", window.get_application().get_name());
	print("window_class:", window.get_class_group_name());
	print("window_xid:", window.get_xid());
	*/

	if (window.get_class_group_name() === 'Mousepad') {
		//https://lazka.github.io/pgi-docs/index.html#Wnck-3.0/classes/Workspace.html#Wnck.Workspace.get_number
		print("workspace:", window.get_workspace().get_number());
	}

	loop.quit();
}


let screen = Wnck.Screen.get_default() // https://lazka.github.io/pgi-docs/index.html#Wnck-3.0/classes/Screen.html#Wnck.Screen.get_default
screen.connect('window-opened', on_window_opened) // https://lazka.github.io/pgi-docs/index.html#Wnck-3.0/classes/Screen.html#Wnck.Screen.signals.window_opened


let loop = GLib.MainLoop.new(null, false);
loop.run();
