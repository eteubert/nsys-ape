MAINDOC = ape

all:
	make xetex
xetex:	
	# xetex $(MAINDOC).tex
	# xetex $(MAINDOC).tex
	xelatex $(MAINDOC)
	xelatex $(MAINDOC)
	# makeindex
	# xelatex $(MAINDOC)
	make clean
latex:
	latex $(MAINDOC).tex
	latex $(MAINDOC).tex
	dvips -Ppdf -o $(MAINDOC).ps $(MAINDOC).dvi
	ps2pdf14 $(MAINDOC).ps $(MAINDOC).pdf
	make clean
clean:
	rm -f $(MAINDOC).aux
	rm -f $(MAINDOC).dvi
	rm -f $(MAINDOC).lof
	rm -f $(MAINDOC).log
	rm -f $(MAINDOC).lol
	rm -f $(MAINDOC).pdfsync
	rm -f $(MAINDOC).ps
	rm -f $(MAINDOC).toc