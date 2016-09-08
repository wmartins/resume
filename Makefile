TARGET=resume
LATEX=xelatex

SRC=src
DIST=dist

all: $(DIST)/$(TARGET).pdf
	mkdir -p $(DIST)
	mv $(TARGET).pdf $(DIST)

$(DIST)/%.pdf: $(SRC)/%.tex
	$(LATEX) $<
