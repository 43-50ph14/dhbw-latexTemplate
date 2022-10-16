.PHONY: clean lint

main.pdf: main.tex literatur.bib tex/*.tex img/* *.bib
	latexmk -lualatex -shell-escape -bibtex -use-make- 'main.tex'

clean:
	latexmk -c

lint:
	grep --color=always -Rni todo **/*.tex
	grep --color=always -Rni citneed **/*.tex
