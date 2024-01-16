.PHONY: info fetch-packs format-readme

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

## make lint-packs :: checks that every pack is in README
lint-packs:
	@for m in $$(<.gitmodules grep 'path = ' | cut -d/ -f4); do \
		grep -q $$m README.md || echo "Missing reference to $$m"; \
	done

## make format-readme :: formats the README.md file
format-readme:
	npx prettier -w --print-width=72 --prose-wrap=always README.md
