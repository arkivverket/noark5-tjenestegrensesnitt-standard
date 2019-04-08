#!/usr/bin/make -f

IMG_PUML := $(wildcard kapitler/media/*.puml)
IMG_PNG := $(IMG_PUML:.puml=.png)

PANDOC_TYPE = markdown_github+table_captions+auto_identifiers+implicit_figures

all: spesifikasjon.pdf spesifikasjon.html
pdf: spesifikasjon.pdf

images: $(IMG_PNG)

.puml.png:
	plantuml -p < $^ > $@

# Draft Docbook based PDF building.  Remove colwidth to let the
# docbook processors calculate columns widths.  Can pandoc be told to
# not set colwidth?
docbook: kapitler/*.md
	[ -h docbook/media ] || ln -s ../kapitler/media docbook
	for m in kapitler/*.md; do \
	    pandoc \
		--top-level-division=chapter -f $(PANDOC_TYPE) \
		-t docbook4 $$m \
		-o docbook/$$(basename $$m .md).xml; \
		sed -i 's/ colwidth="[0-9]*\*"//' docbook/$$(basename $$m .md).xml ; \
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
.SUFFIXES: .md .pdf .docx .puml .png

clean:
	$(RM) $(IMG_PNG)
