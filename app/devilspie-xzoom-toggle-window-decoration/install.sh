#!/usr/bin/env bash

devilspie_install () {
	sudo apt-get install devilspie
}

xzoom_create_install_target_dir () {
	sudo mkdir -p "/usr/local/share/devilspie-xzoom-toggle-window-decoration/"
}


xzoom_install_decorate_script () {
	sudo install -m 755 "xzoom-decorate.sh" "/usr/local/share/devilspie-xzoom-toggle-window-decoration/xzoom-decorate.sh"
	sudo install -m 664 "xzoom-decorate.ds" "/usr/local/share/devilspie-xzoom-toggle-window-decoration/xzoom-decorate.ds"
	sudo ln -sf "/usr/local/share/devilspie-xzoom-toggle-window-decoration/xzoom-decorate.sh" "/usr/local/bin/xzoom-decorate.sh"
}


xzoom_install_decorate_desktop_entry_to_desktop () {
	mkdir -p "$HOME/Desktop"

	cat > "$HOME/Desktop/xzoom-decorate.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Xzoom Window Decorate
GenericName=Xzoom-Decorate
Exec=xzoom-decorate.sh
Icon=applications-utilities
Categories=System;Utility;
Keywords=xzoom;window;decorate;mag;
EOF

# chmod u+x "$HOME/Desktop/xzoom-decorate.desktop"

}

xzoom_install_decorate_desktop_entry_to_applications () {
	mkdir -p "$HOME/.local/share/applications/"

	cat > "$HOME/.local/share/applications/xzoom-decorate.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Xzoom Window Decorate
GenericName=Xzoom-Decorate
Exec=xzoom-decorate.sh
Icon=applications-utilities
Categories=System;Utility;
Keywords=xzoom;window;decorate;mag;
EOF

}


xzoom_install_undecorate_script () {
	sudo install -m 755 "xzoom-undecorate.sh" "/usr/local/share/devilspie-xzoom-toggle-window-decoration/xzoom-undecorate.sh"
	sudo install -m 664 "xzoom-undecorate.ds" "/usr/local/share/devilspie-xzoom-toggle-window-decoration/xzoom-undecorate.ds"
	sudo ln -sf "/usr/local/share/devilspie-xzoom-toggle-window-decoration/xzoom-undecorate.sh" "/usr/local/bin/xzoom-undecorate.sh"
}


xzoom_install_undecorate_desktop_entry_to_desktop () {
	mkdir -p "$HOME/Desktop"

	cat > "$HOME/Desktop/xzoom-undecorate.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Xzoom Window Undecorate
GenericName=Xzoom-Undecorate
Exec=xzoom-undecorate.sh
Icon=applications-utilities
Categories=System;Utility;
Keywords=xzoom;window;undecorate;mag;
EOF

# chmod u+x "$HOME/Desktop/xzoom-undecorate.desktop"

}

xzoom_install_undecorate_desktop_entry_to_applications () {
	mkdir -p "$HOME/.local/share/applications/"

	cat > "$HOME/.local/share/applications/xzoom-undecorate.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Xzoom Window Undecorate
GenericName=Xzoom-Undecorate
Exec=xzoom-undecorate.sh
Icon=applications-utilities
Categories=System;Utility;
Keywords=xzoom;window;undecorate;mag;
EOF

}


xzoom_install_main () {
	devilspie_install

	xzoom_create_install_target_dir

	xzoom_install_decorate_script
	xzoom_install_decorate_desktop_entry_to_desktop
	xzoom_install_decorate_desktop_entry_to_applications

	xzoom_install_undecorate_script
	xzoom_install_undecorate_desktop_entry_to_desktop
	xzoom_install_undecorate_desktop_entry_to_applications
}


xzoom_install_main
