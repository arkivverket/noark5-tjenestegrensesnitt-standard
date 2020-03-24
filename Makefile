#!/usr/bin/make -f

IMG_PUML := $(wildcard kapitler/media/*.puml)
IMG_PNG := $(IMG_PUML:.puml=.png)

PANDOC_TYPE = rst

all: spesifikasjon.pdf spesifikasjon.html
pdf: spesifikasjon.pdf

images: $(IMG_PNG)

#kapitler/media/uml-complete.puml: bin/text2uml kapitler/07-tjenester_og_informasjonsmodell.rst
#	bin/text2uml > $@.new && mv $@.new $@

.puml.png:
	plantuml -p < $^ > $@.new && mv $@.new $@

.puml.svg:
	plantuml -svg -p < $^ > $@.new && mv $@.new $@

# Draft Docbook based PDF building.  Remove colwidth to let the
# docbook processors calculate columns widths.  Can pandoc be told to
# not set colwidth?
docbook: kapitler/*.rst
	[ -h docbook/media ] || ln -s ../kapitler/media docbook
	for m in kapitler/*.rst; do \
	    pandoc \
		--top-level-division=chapter -f $(PANDOC_TYPE) \
		-t docbook4 $$m \
		-o docbook/$$(basename $$m .rst).xml; \
	done
	sed -i -e 's%<chapter%<appendix%' -e 's%</chapter%</appendix%' docbook/*-vedlegg*.xml
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
.rst.pdf:
	pandoc -f $(PANDOC_TYPE) -t latex $^ -o $@

.PHONY: docbook
.SUFFIXES: .rst .pdf .docx .puml .png .svg

clean:
	$(RM) $(IMG_PNG)

XMLLINTOPTS = --nonet --noout  --xinclude --postvalid
lint: docbook
	xmllint $(XMLLINTOPTS) docbook/spesifikasjon.xml
