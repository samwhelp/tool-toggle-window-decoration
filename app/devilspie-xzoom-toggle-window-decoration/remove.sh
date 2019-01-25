#!/usr/bin/env bash

devilspie_remove () {
	: # pass
	# sudo apt-get purge devilspie
}

xzoom_remove_install_target_dir () {
	sudo rm "/usr/local/share/devilspie-xzoom-toggle-window-decoration/" -rf
}


xzoom_remove_decorate_script () {
	sudo rm -f "/usr/local/bin/xzoom-decorate.sh"
}


xzoom_remove_decorate_desktop_entry_from_desktop () {
	rm -f "$HOME/Desktop/xzoom-decorate.desktop"
}

xzoom_remove_decorate_desktop_entry_from_applications () {
	rm -f "$HOME/.local/share/applications/xzoom-decorate.desktop"
}


xzoom_remove_undecorate_script () {
	sudo rm -f "/usr/local/bin/xzoom-undecorate.sh"
}


xzoom_remove_undecorate_desktop_entry_from_desktop () {
	rm -f "$HOME/Desktop/xzoom-undecorate.desktop"
}

xzoom_remove_undecorate_desktop_entry_from_applications () {
	rm -f "$HOME/.local/share/applications/xzoom-undecorate.desktop"
}


xzoom_remove_main () {
	devilspie_remove

	xzoom_remove_install_target_dir

	xzoom_remove_decorate_script
	xzoom_remove_decorate_desktop_entry_from_desktop
	xzoom_remove_decorate_desktop_entry_from_applications

	xzoom_remove_undecorate_script
	xzoom_remove_undecorate_desktop_entry_from_desktop
	xzoom_remove_undecorate_desktop_entry_from_applications
}


xzoom_remove_main
