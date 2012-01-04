MAINDOC = ape

all:
	latex $(MAINDOC).tex
	latex $(MAINDOC).tex
	dvips -Ppdf -o $(MAINDOC).ps $(MAINDOC).dvi
	ps2pdf14 $(MAINDOC).ps $(MAINDOC).pdf
	make clean
clean:
	rm -f ape.aux
	rm -f ape.dvi
	rm -f ape.lof
	rm -f ape.log
	rm -f ape.lol
	rm -f ape.pdfsync
	rm -f ape.ps
	rm -f ape.toc