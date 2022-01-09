SHELL := /bin/bash

default: html

.PHONY: html css serve

html:
	tiddlywiki --build
	cp output/index.html .

css:
	node-sass --output-style compressed style.scss > 'themes/void/css/$$__themes_void_css_style.css'

serve:
	tiddlywiki --listen
