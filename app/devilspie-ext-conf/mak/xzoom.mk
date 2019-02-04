
xzoom-install: devilspie-prepare-conf-dir
	cp conf/xzoom.ds ~/.devilspie/
.PHONY: xzoom-install


xzoom-remove:
	rm -f ~/.devilspie/xzoom.ds
.PHONY: xzoom-remove
