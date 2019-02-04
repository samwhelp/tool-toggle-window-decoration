
debug-install: devilspie-prepare-conf-dir
	cp conf/debug.ds ~/.devilspie/
.PHONY: debug-install


debug-remove:
	rm -f ~/.devilspie/debug.ds
.PHONY: debug-remove
