\version "2.19.82"

\header {
  title = "Bob The Song"
  composer = "Bob The Composer"
}


g_first = \relative fis {
  fis4 cis' e cis | d cis b cis |
  fis, cis' e cis | d cis a b |
  fis cis' e cis | d e fis e |
  fis, cis' e cis | a gis b cis |
  fis, cis' fis e | fis gis fis e | d cis b a | b gis fis2 |
}

b_first = \relative c {
  fis,2.. fis8 | fis2.. fis8 |
  fis2.. fis8 | fis2.. fis8 |
  fis2.. fis8 | fis2.. fis8 |
  fis2.. fis8 | fis2.. fis8 |
  fis2.. fis8 | fis2.. fis8 | fis2.. fis8 | fis1 |
}


g_chorus = \relative fis {
  cis4 fis gis a | b cis d e |
  d, fis gis a | b cis d cis |
  e, fis gis a | b a gis a |
  b, fis' gis a | b a gis fis |

  cis fis gis a | b cis d e |
  d, fis gis a | b cis d cis |
  e, fis gis a | b a gis a |

  b, fis' gis a | b4 a gis fis~ | fis1 |
}

b_chorus = \relative c, {
  a'4 fis8 gis8 a4 b4 |
  a4 fis8 gis8 a4 b4 |
  a4 fis8 gis8 a4 b4 |
  a4 fis8 gis8 a4 b4 |

  a4 fis8 gis8 a8 b8 a4 |
  a4 fis8 gis8 a8 b8 a4 |
  a4 fis8 gis8 a8 b8 a4 |
  a4 fis8 gis8 a8 b8 a4 |

  a1 | b1 | cis1 | d1 |
  e1 | b1 | b,1 | b4 a gis2 | fis1 |
}

g_second = \relative fis {
  fis4 cis' fis gis | a8( gis) gis2. |
  \time 7/4 f4 gis b ais gis2. |
  \time 4/4
  fis4 d e cis | d b2. |
  g4 b e fis | g fis2. |

  % \todo
  fis,4 cis' fis gis | a8( gis) gis2. |
  d'4\glissando e d cis |
}

b_second = \relative c {
  fis1 | fis1 |
  \time 7/4 fis1.~ fis4 |
  \time 4/4
  fis1 | fis1 |
  fis1 | fis1 |

  fis1 | fis1 |
  fis1 |
}


g_third = \relative fis {
  \time 7/4
  fis4 cis' fis~ fis1 |
  fis,4 cis' e~ e1 |
  fis,4 cis' d~ d1 |
  fis,4 cis' b~ b1 |

  \time 4/4
  fis4 cis' fis2 |
  fis,4 cis' e2 |
  fis,4 cis' d2 |
  fis,4 cis' b2 |

  fis4 cis' fis e | fis gis fis e | d cis b a | b gis fis2 |
}

b_third = \relative c {
  \time 7/4
  fis1.~ fis4 | fis1.~ fis4 | fis1.~ fis4 | fis1.~ fis4 |

  \time 4/4
  fis1 | fis1 | fis1 | fis1 |
  fis1 | fis1 | fis1 | fis1 |
}


g_epilogue = \relative fis {
  d'4 cis b a | b gis fis2~ | fis1 |
}

b_epilogue = \relative c {
  d'4 cis b a | gis a fis2~ | fis1 |
}


\score {
  <<
    {
      \new Staff \with {
	instrumentName = #"Guitar"
	midiInstrument = #"electric guitar (clean)"
      }

      \key fis \minor

      \mark "First" \g_first
      \mark "Chorus" \g_chorus
      \mark "Second" \g_second
      \mark "Chorus" \g_chorus
      \mark "Third" \g_third
      \mark "Chorus" \g_chorus
      \mark "Epilogue" \g_epilogue
    }

    {
      \new Staff \with {
        instrumentName = #"Bass"
        midiInstrument = #"electric bass (finger)"
      }
      \key fis \minor
      \clef bass

      %% If the bass sounds an octave higher in MIDI, uncomment this
      %% I think something is wrong with my soundfonts
      %% \transpose c c, {
        \b_first
        \b_chorus
        \b_second
        \b_chorus
        \b_third
        \b_chorus
        \b_epilogue
      %% }
    }
  >>

  \layout {}
  \midi { \tempo 4 = 200 }
}
