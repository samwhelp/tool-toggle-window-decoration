
devilspie-prepare-conf-dir:
	mkdir -p ~/.devilspie
.PHONY: devilspie-prepare-conf-dir


devilspie-conf-dir-path:
	@echo ~/.devilspie
.PHONY: devilspie-conf-dir-path


devilspie-ls-conf-dir:
	@ls ~/.devilspie -1
.PHONY: devilspie-ls-conf-dir
