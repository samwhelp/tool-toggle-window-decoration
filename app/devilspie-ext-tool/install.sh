#!/usr/bin/env bash

devilspie_install () {
	sudo apt-get install devilspie
}

tool_create_install_target_dir () {
	sudo mkdir -p "/usr/local/share/devilspie-ext-tool/"
}


tool_install_win_info_script () {
	sudo install -m 755 "devilspie-win-info.sh" "/usr/local/share/devilspie-ext-tool/devilspie-win-info.sh"
	sudo install -m 664 "devilspie-win-info.ds" "/usr/local/share/devilspie-ext-tool/devilspie-win-info.ds"
	sudo ln -sf "/usr/local/share/devilspie-ext-tool/devilspie-win-info.sh" "/usr/local/bin/devilspie-win-info"
}

tool_install_win_info_desktop_entry_to_desktop () {
	mkdir -p "$HOME/Desktop"

	cat > "$HOME/Desktop/devilspie-win-info.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Devilspie Win Info
GenericName=devilspie-win-info
Exec=bash -c "devilspie-win-info;$SHELL"
Icon=applications-utilities
Categories=System;Utility;
Keywords=tool;window;info;
Terminal=true
EOF

# chmod u+x "$HOME/Desktop/tool-decorate.desktop"

}

tool_install_win_info_desktop_entry_to_applications () {
	mkdir -p "$HOME/.local/share/applications/"

	cat > "$HOME/.local/share/applications/devilspie-win-info.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Devilspie Win Info
GenericName=devilspie-win-info
Exec=gnome-terminal -e "bash -c 'devilspie-win-info;$SHELL'"
Icon=applications-utilities
Categories=System;Utility;
Keywords=tool;window;info;
Terminal=false
EOF

}




tool_install_win_list_script () {
	sudo install -m 755 "devilspie-win-list.sh" "/usr/local/share/devilspie-ext-tool/devilspie-win-list.sh"
	sudo install -m 664 "devilspie-win-list.ds" "/usr/local/share/devilspie-ext-tool/devilspie-win-list.ds"
	sudo ln -sf "/usr/local/share/devilspie-ext-tool/devilspie-win-list.sh" "/usr/local/bin/devilspie-win-list"
}

tool_install_win_list_desktop_entry_to_desktop () {
	mkdir -p "$HOME/Desktop"

	cat > "$HOME/Desktop/devilspie-win-list.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Devilspie Win List
GenericName=devilspie-win-list
Exec=bash -c "devilspie-win-list;$SHELL"
Icon=applications-utilities
Categories=System;Utility;
Keywords=tool;window;info;
Terminal=true
EOF

# chmod u+x "$HOME/Desktop/tool-decorate.desktop"

}

tool_install_win_list_desktop_entry_to_applications () {
	mkdir -p "$HOME/.local/share/applications/"

	cat > "$HOME/.local/share/applications/devilspie-win-list.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Devilspie Win List
GenericName=devilspie-win-list
Exec=gnome-terminal -e "bash -c 'devilspie-win-list;$SHELL'"
Icon=applications-utilities
Categories=System;Utility;
Keywords=tool;window;info;
Terminal=false
EOF

}




tool_install_debug_info_script () {
	sudo install -m 755 "devilspie-debug-info.sh" "/usr/local/share/devilspie-ext-tool/devilspie-debug-info.sh"
	sudo install -m 664 "devilspie-debug-info.ds" "/usr/local/share/devilspie-ext-tool/devilspie-debug-info.ds"
	sudo ln -sf "/usr/local/share/devilspie-ext-tool/devilspie-debug-info.sh" "/usr/local/bin/devilspie-debug-info"
}


tool_install_debug_info_desktop_entry_to_desktop () {
	mkdir -p "$HOME/Desktop"

	cat > "$HOME/Desktop/devilspie-debug-info.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Devilspie Debug Info
GenericName=devilspie-debug-info
Exec=bash -c "devilspie-debug-info;$SHELL"
Icon=applications-utilities
Categories=System;Utility;
Keywords=tool;window;info;
Terminal=true
EOF

# chmod u+x "$HOME/Desktop/tool-decorate.desktop"

}

tool_install_debug_info_desktop_entry_to_applications () {
	mkdir -p "$HOME/.local/share/applications/"

	cat > "$HOME/.local/share/applications/devilspie-debug-info.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Devilspie Debug Info
GenericName=devilspie-debug-info
Exec=gnome-terminal -e "bash -c 'devilspie-debug-info;$SHELL'"
Icon=applications-utilities
Categories=System;Utility;
Keywords=tool;window;info;
Terminal=false
EOF

}



tool_install_main () {
	devilspie_install

	tool_create_install_target_dir

	tool_install_win_info_script
	tool_install_win_info_desktop_entry_to_desktop
	tool_install_win_info_desktop_entry_to_applications


	tool_install_win_list_script
	tool_install_win_list_desktop_entry_to_desktop
	tool_install_win_list_desktop_entry_to_applications


	tool_install_debug_info_script
	tool_install_debug_info_desktop_entry_to_desktop
	tool_install_debug_info_desktop_entry_to_applications
}


tool_install_main
