SONGS=$(wildcard *.ly)
OUT=$(subst .ly,.pdf,$(SONGS))

all: $(OUT)

%.pdf: %.ly
	lilypond $<
