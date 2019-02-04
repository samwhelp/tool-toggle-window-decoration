
mpv-install: devilspie-prepare-conf-dir
	cp conf/mpv.ds ~/.devilspie/
.PHONY: mpv-install


mpv-remove:
	rm -f ~/.devilspie/mpv.ds
.PHONY: mpv-remove
