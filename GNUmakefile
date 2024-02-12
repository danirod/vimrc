.PHONY: info fetch-packs update-packs

## make info :: prints help
info:
	@grep '^## make' < GNUmakefile | tr -d '#' | sort

## make fetch-packs :: pulls packs
fetch-packs:
	git submodule init
	git submodule update

## make update-packs :: updates the plugins
update-packs:
	git submodule update --remote
