#!/usr/bin/env bash

devilspie_install () {
	sudo apt-get install devilspie
}

kmag_create_install_target_dir () {
	sudo mkdir -p "/usr/local/share/devilspie-kmag-toggle-window-decoration/"
}


kmag_install_decorate_script () {
	sudo install -m 755 "kmag-decorate.sh" "/usr/local/share/devilspie-kmag-toggle-window-decoration/kmag-decorate.sh"
	sudo install -m 664 "kmag-decorate.ds" "/usr/local/share/devilspie-kmag-toggle-window-decoration/kmag-decorate.ds"
	sudo ln -sf "/usr/local/share/devilspie-kmag-toggle-window-decoration/kmag-decorate.sh" "/usr/local/bin/kmag-decorate.sh"
}


kmag_install_decorate_desktop_entry_to_desktop () {
	mkdir -p "$HOME/Desktop"

	cat > "$HOME/Desktop/kmag-decorate.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Kmag Window Decorate
GenericName=Kmag-Decorate
Exec=kmag-decorate.sh
Icon=applications-utilities
Categories=System;Utility;
Keywords=kmag;window;decorate;mag;
EOF

# chmod u+x "$HOME/Desktop/kmag-decorate.desktop"

}

kmag_install_decorate_desktop_entry_to_applications () {
	mkdir -p "$HOME/.local/share/applications/"

	cat > "$HOME/.local/share/applications/kmag-decorate.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Kmag Window Decorate
GenericName=Kmag-Decorate
Exec=kmag-decorate.sh
Icon=applications-utilities
Categories=System;Utility;
Keywords=kmag;window;decorate;mag;
EOF

}


kmag_install_undecorate_script () {
	sudo install -m 755 "kmag-undecorate.sh" "/usr/local/share/devilspie-kmag-toggle-window-decoration/kmag-undecorate.sh"
	sudo install -m 664 "kmag-undecorate.ds" "/usr/local/share/devilspie-kmag-toggle-window-decoration/kmag-undecorate.ds"
	sudo ln -sf "/usr/local/share/devilspie-kmag-toggle-window-decoration/kmag-undecorate.sh" "/usr/local/bin/kmag-undecorate.sh"
}


kmag_install_undecorate_desktop_entry_to_desktop () {
	mkdir -p "$HOME/Desktop"

	cat > "$HOME/Desktop/kmag-undecorate.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Kmag Window Undecorate
GenericName=Kmag-Undecorate
Exec=kmag-undecorate.sh
Icon=applications-utilities
Categories=System;Utility;
Keywords=kmag;window;undecorate;mag;
EOF

# chmod u+x "$HOME/Desktop/kmag-undecorate.desktop"

}

kmag_install_undecorate_desktop_entry_to_applications () {
	mkdir -p "$HOME/.local/share/applications/"

	cat > "$HOME/.local/share/applications/kmag-undecorate.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Kmag Window Undecorate
GenericName=Kmag-Undecorate
Exec=kmag-undecorate.sh
Icon=applications-utilities
Categories=System;Utility;
Keywords=kmag;window;undecorate;mag;
EOF

}


kmag_install_main () {
	devilspie_install

	kmag_create_install_target_dir

	kmag_install_decorate_script
	kmag_install_decorate_desktop_entry_to_desktop
	kmag_install_decorate_desktop_entry_to_applications

	kmag_install_undecorate_script
	kmag_install_undecorate_desktop_entry_to_desktop
	kmag_install_undecorate_desktop_entry_to_applications
}


kmag_install_main
