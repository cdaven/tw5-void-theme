SHELL := /bin/bash

default: all

.PHONY: html css serve palette

html:
	tiddlywiki --build
	cp output/index.html .

css:
	node-sass --output-style compressed sass/style.scss > 'themes/void/css/$$__themes_void_css_style.css'

palette:
	cp sass/_palette.scss 'sass/$$__palettes_void'
	@# Remove lines starting with //
	sed -i '/^\/\//d' 'sass/$$__palettes_void'
	@# Remove leading $ characters //
	sed -i 's/^\$$//g' 'sass/$$__palettes_void'
	@# Remove all ; characters //
	sed -i 's/;//g' 'sass/$$__palettes_void'
	@# Transpile variables to the right //
	sed -i 's/\$$\([^\r\n]*\)/<<colour \1>>/g' 'sass/$$__palettes_void'
	mv 'sass/$$__palettes_void' themes/void/

serve:
	tiddlywiki --listen

all: palette css html
