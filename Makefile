.PHONY: build

build:
	xelatex -synctex=1 -interaction=nonstopmode resume.tex
	xelatex -synctex=1 -interaction=nonstopmode resume.tex
	mv resume.pdf 'резюме Редькин.pdf'
