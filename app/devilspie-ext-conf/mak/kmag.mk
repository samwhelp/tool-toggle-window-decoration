
kmag-install: devilspie-prepare-conf-dir
	cp conf/kmag.ds ~/.devilspie/
.PHONY: kmag-install


kmag-remove:
	rm -f ~/.devilspie/kmag.ds
.PHONY: kmag-remove
