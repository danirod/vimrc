.PHONY: info fetch-packs format-readme

## make info :: prints help
info:
	@grep '^## make' < GNUmakefile | tr -d '#' | sort

## make fetch-packs :: pulls and updates the plugins
fetch-packs:
	git submodule init
	git submodule update
	git submodule update --remote

## make format-readme :: formats the README.md file
format-readme:
	npx prettier -w --print-width=72 --prose-wrap=always README.md
