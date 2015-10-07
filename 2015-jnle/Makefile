survey.pdf: $(wildcard *.tex)
	latexmk survey.tex --shell-escape -pdf -dvi- -ps-

clean:
	latexmk -c
	latexmk -CA
	rm survey.bbl
