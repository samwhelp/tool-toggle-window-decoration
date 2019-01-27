#!/usr/bin/env gjs

const GLib = imports.gi.GLib;
const Wnck = imports.gi.Wnck;


let on_window_opened = function (screen, widow) {

}

//screen = Wnck.Screen.get_default() // https://lazka.github.io/pgi-docs/index.html#Wnck-3.0/classes/Screen.html#Wnck.Screen.get_default
//screen.connect('window-opened', on_window_opened) // https://lazka.github.io/pgi-docs/index.html#Wnck-3.0/classes/Screen.html#Wnck.Screen.signals.window_opened

print(Wnck.Screen.get_default());


let loop = GLib.MainLoop.new(null, false);


loop.run();
