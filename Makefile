all: html/index.html html/static

html/index.html: presentation.rst
	hovercraft presentation.rst html

html/static: static/*
	mkdir -p html/static; cp static/* html/static/

