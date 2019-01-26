#!/usr/bin/env bash

devilspie_remove () {
	: # pass
	# sudo apt-get purge devilspie
}

tool_remove_install_target_dir () {
	sudo rm "/usr/local/share/devilspie-ext-tool/" -rf
}


tool_remove_win_info_script () {
	sudo rm -f "/usr/local/bin/devilspie-win-info"
}


tool_remove_win_info_desktop_entry_from_desktop () {
	rm -f "$HOME/Desktop/devilspie-win-info.desktop"
}

tool_remove_win_info_desktop_entry_from_applications () {
	rm -f "$HOME/.local/share/applications/devilspie-win-info.desktop"
}




tool_remove_main () {
	devilspie_remove

	tool_remove_install_target_dir

	tool_remove_win_info_script
	tool_remove_win_info_desktop_entry_from_desktop
	tool_remove_win_info_desktop_entry_from_applications


}


tool_remove_main
