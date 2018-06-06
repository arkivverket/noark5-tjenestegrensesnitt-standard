#!/usr/bin/make -f

all: NOARK5v4_tjenestegrensesnitt_1.1.pdf NOARK5v4_tjenestegrensesnitt_Kapittel-6.pdf

.md.pdf:
	pandoc -f gfm -t latex $^ -o $@

.SUFFIXES: .md .pdf
