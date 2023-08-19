.PHONY: build

build:
	xelatex -interaction=nonstopmode resume.tex
	xelatex -interaction=nonstopmode resume.tex

