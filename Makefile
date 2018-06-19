#!/usr/bin/make -f

IMG_EMF := $(wildcard media/*.emf)
IMG_PNG := $(IMG_EMF:.emf=.png)

PANDOC_TYPE = markdown_github+table_captions+auto_identifiers+implicit_figures

PDF = \
	NOARK5v4_tjenestegrensesnitt_1.1.pdf \
	NOARK5v4_tjenestegrensesnitt_Kapittel-6.pdf

ORIG_PDF = \
	arkiv/2018-06-06-NOARK5v4_tjenestegrensesnitt_1.1.pdf \
	arkiv/2018-06-06-NOARK5v4_tjenestegrensesnitt_Kapittel-6.pdf


all: pdf
pdf:  $(IMG_PNG) $(PDF)
$(PDF):

.md.pdf:
	pandoc -f $(PANDOC_TYPE) -t latex $^ -o $@

images: $(IMG_PNG)

.SUFFIXES: .md .pdf .docx .emf .png

.emf.png:
	inkscape --export-dpi=72 --export-png=$@ $^
	#cd $(dirname $@); libreoffice --headless --convert-to png $(abspath $^)
.docx.pdf:
	cd $(shell dirname $@); libreoffice --headless --invisible --convert-to pdf $(abspath $^)

clean:
	$(RM) $(IMG_PNG)

# Draft Docbook based PDF building
docbook: kapitler/*.md
	[ -h docbook/media ] || ln -s ../media docbook
	for m in kapitler/*.md; do \
	    pandoc \
		--top-level-division=chapter -f $(PANDOC_TYPE) \
		-t docbook4 $$m \
		-o docbook/$$(basename $$m .md).xml; \
	done
DBLATEX_OPTS = \
	-T simple \
	-p docbook/pdf.xsl
book: docbook images
	#xmlto --with-fop pdf docbook/book.xml
	#xmlto --with-dblatex pdf docbook/book.xml
	dblatex $(DBLATEX_OPTS) -o book.pdf docbook/book.xml
html: docbook images
	xmlto html-nochunks docbook/book.xml

.PHONY: docbook
