#!/usr/bin/env gjs

const GLib = imports.gi.GLib;

let loop = GLib.MainLoop.new(null, false);

loop.run();

//https://avizajac.com/gnome/2018/07/29/creating-promisify.html
//https://wiki.gnome.org/Gjs/Examples/DBusClient
//http://rocksaying.tw/archives/15700221.html
//http://devdocs.baznga.org/glib20~2.50.0-mainloop/
//http://devdocs.baznga.org/glib20~2.50.0/glib.mainloop
