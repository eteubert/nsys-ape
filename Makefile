MAINDOC = ape

all:
	make xetex
xetex:	
	xelatex -interaction=nonstopmode $(MAINDOC)
	makeglossaries $(MAINDOC)
	xelatex -interaction=nonstopmode $(MAINDOC)
	# 3rd run for glossaries to appear in TOC
	# xelatex -interaction=nonstopmode $(MAINDOC)

	make clean
latex:
	latex $(MAINDOC).tex
	latex $(MAINDOC).tex
	dvips -Ppdf -o $(MAINDOC).ps $(MAINDOC).dvi
	ps2pdf14 $(MAINDOC).ps $(MAINDOC).pdf
	make clean
clean:
	rm -f $(MAINDOC).aux
	rm -f $(MAINDOC).acn
	rm -f $(MAINDOC).acr
	rm -f $(MAINDOC).alg
	rm -f $(MAINDOC).glg
	rm -f $(MAINDOC).glo
	rm -f $(MAINDOC).gls
	rm -f $(MAINDOC).dvi
	rm -f $(MAINDOC).ist
	rm -f $(MAINDOC).lof
	rm -f $(MAINDOC).log
	rm -f $(MAINDOC).lol
	rm -f $(MAINDOC).out
	rm -f $(MAINDOC).pdfsync
	rm -f $(MAINDOC).ps
	rm -f $(MAINDOC).toc