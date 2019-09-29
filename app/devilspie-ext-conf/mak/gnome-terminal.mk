
gnome-terminal-install: devilspie-prepare-conf-dir
	cp conf/gnome-terminal.ds ~/.devilspie/
.PHONY: gnome-terminal-install


gnome-terminal-remove:
	rm -f ~/.devilspie/gnome-terminal.ds
.PHONY: gnome-terminal-remove
