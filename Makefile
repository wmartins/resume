LATEX=pdflatex

SRC=src
DIST=dist

OBJECTS=\
	resume-en-us.pdf \
	resume-pt-br.pdf

all: $(OBJECTS)
	mkdir -p $(DIST)
	cp *.pdf $(DIST)

%.pdf: $(SRC)/%.tex
	TEXINPUTS=.:$(SRC):${TEXINPUTS} $(LATEX) $<
