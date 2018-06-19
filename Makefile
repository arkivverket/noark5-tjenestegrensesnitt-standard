#!/usr/bin/make -f

IMG_EMF := $(wildcard media/*.emf)
IMG_PNG := $(IMG_EMF:.emf=.png)

PANDOC_TYPE = markdown_github+table_captions+auto_identifiers+implicit_figures

all: spesifikasjon.pdf spesifikasjon.html
pdf: spesifikasjon.pdf

images: $(IMG_PNG)

.emf.png:
	inkscape --export-dpi=72 --export-png=$@ $^
	#cd $(dirname $@); libreoffice --headless --convert-to png $(abspath $^)

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
spesifikasjon: spesifikasjon.pdf
spesifikasjon.pdf: docbook images
	#xmlto --with-fop pdf docbook/spesifikasjon.xml
	#xmlto --with-dblatex pdf docbook/spesifikasjon.xml
	dblatex $(DBLATEX_OPTS) -o spesifikasjon.pdf docbook/spesifikasjon.xml
html: spesifikasjon.html
spesifikasjon.html: docbook images
	xmlto html-nochunks docbook/spesifikasjon.xml

# Rules useful for checking out the docx based documents
.docx.pdf:
	cd $(shell dirname $@); libreoffice --headless --invisible --convert-to pdf $(abspath $^)
.md.pdf:
	pandoc -f $(PANDOC_TYPE) -t latex $^ -o $@

.PHONY: docbook
.SUFFIXES: .md .pdf .docx .emf .png

clean:
	$(RM) $(IMG_PNG)
