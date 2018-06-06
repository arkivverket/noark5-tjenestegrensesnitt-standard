#!/usr/bin/make -f

IMG_EMF := $(wildcard media/*.emf)
IMG_PNG := $(IMG_EMF:.emf=.png)

PDF = \
	NOARK5v4_tjenestegrensesnitt_1.1.pdf \
	NOARK5v4_tjenestegrensesnitt_Kapittel-6.pdf

all: pdf
pdf:  $(IMG_PNG) $(PDF)
$(PDF):

.md.pdf:
	pandoc -f gfm -t latex $^ -o $@

.SUFFIXES: .md .pdf .emf .png

.emf.png:
	inkscape --export-dpi=600 --export-png=$@ $^
