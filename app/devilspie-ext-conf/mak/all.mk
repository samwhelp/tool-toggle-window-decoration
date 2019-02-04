
all-install: devilspie-prepare-conf-dir
	cp conf/*.ds ~/.devilspie/
.PHONY: all-install


all-remove:
	rm -f ~/.devilspie/*.ds
.PHONY: all-remove
