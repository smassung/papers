paper.pdf: $(wildcard *.tex)
	latexmk paper.tex -xelatex --shell-escape -pdf -dvi- -ps-

clean:
	latexmk -c
	latexmk -CA
	rm paper.bbl
