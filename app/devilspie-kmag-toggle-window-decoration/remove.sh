#!/usr/bin/env bash

devilspie_remove () {
	: # pass
	# sudo apt-get purge devilspie
}

kmag_remove_install_target_dir () {
	sudo rm "/usr/local/share/devilspie-kmag-toggle-window-decoration/" -rf
}


kmag_remove_decorate_script () {
	sudo rm -f "/usr/local/bin/kmag-decorate.sh"
}


kmag_remove_decorate_desktop_entry_from_desktop () {
	rm -f "$HOME/Desktop/kmag-decorate.desktop"
}

kmag_remove_decorate_desktop_entry_from_applications () {
	rm -f "$HOME/.local/share/applications/kmag-decorate.desktop"
}


kmag_remove_undecorate_script () {
	sudo rm -f "/usr/local/bin/kmag-undecorate.sh"
}


kmag_remove_undecorate_desktop_entry_from_desktop () {
	rm -f "$HOME/Desktop/kmag-undecorate.desktop"
}

kmag_remove_undecorate_desktop_entry_from_applications () {
	rm -f "$HOME/.local/share/applications/kmag-undecorate.desktop"
}


kmag_remove_main () {
	devilspie_remove

	kmag_remove_install_target_dir

	kmag_remove_decorate_script
	kmag_remove_decorate_desktop_entry_from_desktop
	kmag_remove_decorate_desktop_entry_from_applications

	kmag_remove_undecorate_script
	kmag_remove_undecorate_desktop_entry_from_desktop
	kmag_remove_undecorate_desktop_entry_from_applications
}


kmag_remove_main
