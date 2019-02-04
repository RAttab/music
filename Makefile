
SONGS += bob-the-song.pdf
SONGS += bob-the-drums.pdf

all: $(SONGS)

%.pdf: %.ly
	lilypond $<
