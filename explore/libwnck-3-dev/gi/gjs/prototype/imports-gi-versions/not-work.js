#!/usr/bin/env gjs

const Gdk = imports.gi.Gdk;
const Gtk = imports.gi.Gtk;
const GLib = imports.gi.GLib;
const Wnck = imports.gi.Wnck;



Gtk.init(null);

print(Wnck.Screen.get_default());


let loop = GLib.MainLoop.new(null, false);


loop.run();
