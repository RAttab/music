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
  fis,2. fis4 | fis2. fis4 |
  fis2. fis4 | d2 e2 |

  fis2. fis4 | fis2. fis4 |
  fis2. fis4 | d2 e2 |

  fis2. fis4 | fis2. fis4 |
  fis2. fis4 | gis2 fis2 |
}

d_first = \drummode {
  \repeat unfold 11 { <bd cymra>2 cymra8 cymra8 hho4 | }
  cymra2 rb2 |
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

d_chorus_first = \drummode {
  \repeat unfold 4 { <hhp bd sn>2 <hhp sn>2 | <hhp sn>2 <hhp sn>4. sn8 | }
  \repeat unfold 4 { <hhp bd sn>2 <hhp bd sn>2 | <hhp bd sn>2 <hhp bd sn>4. sn8 | }
  cymra16\< \repeat unfold 6 cymra cymra\! r2 |
}


g_second = \relative fis {
  fis4 cis' fis gis | a8( gis) gis2. |
  f4 gis b ais | gis1 |
  fis4 d e cis | d b2. |
  g4 b e fis | g fis2. |

  fis,4 cis' fis gis | a8( gis) gis2. |
  fis2 e4 a, | b cis2. |
  g4 a b g | fis g fis2 | g4 a b g | fis g fis2 |

  fis4 cis' fis gis | a8( gis) gis2. |
  d'4\glissando e2 d4~ | d4 cis2. |
  e4\glissando fis4 e2 | fis4\glissando gis2 fis4 | e2 fis2~ | fis1 |
}

b_second = \relative c {
  fis1 | fis1 |
  fis1 | fis1 |
  fis1 | fis1 |
  fis1 | fis1 |

  fis1 | fis1 |
  fis1 | fis1 |
  fis1 | fis1 | fis1 | fis1 |

  fis1 | fis1 |
  fis1 | fis1 |
  fis1 | fis1 | fis1 | fis1 |
}

d_second = \drummode {
  \repeat unfold 3 { <cymra bd>2 cymra | <cymra bd>4 bd cymra2 | }
  <cymra bd>2 cymra | <cymra bd>4 bd hho2 |

  \repeat unfold 3 { <cymra bd>2 cymra | <cymra bd>4 bd cymra2 | }
  <cymra bd>2 cymra | <cymra bd>4 bd hho2 |

  \repeat unfold 2 { <cymra bd>2 cymra | <cymra bd>4 bd cymra2 | }
  \repeat unfold 3 { <cymra bd>2 <cymra bd> | }
  cymra16\< \repeat unfold 6 cymra cymra\! r4. sn8 |
}

d_chorus_second = \drummode {
  <cymc bd>4 bd bd2 | sn2 sn4. sn8 |
  \repeat unfold 7 { <sn bd>4 bd bd2 | sn2 sn4. sn8 | }
  cymra16\< \repeat unfold 6 cymra cymra\! r2 |
}


g_third = \relative fis {
  fis4 cis' fis2~ | fis1 |
  fis,4 cis' e2~ | e1 |
  fis,4 cis' d2~ | d1 |
  fis,4 cis' b2~ | b1 |

  fis4 cis' fis2 |
  fis,4 cis' e2 |
  fis,4 cis' d2 |
  fis,4 cis' b2 |

  fis4 cis' fis e | fis gis fis e | d cis b a | b gis fis2 |
}

b_third = \relative c {
  fis1 | fis |
  fis | fis |
  fis | fis |
  fis | fis |

  fis1 | fis1 | fis1 | fis1 |
  r1 | r1 | r1 | r1 |
}

d_third = \drummode {
  \repeat unfold 4 { bd1 | hho8 hho hho hho~ hho2 | }
  \repeat unfold 4 { <sn bd>2 sn | }
  r1 | r1 | r1 | r2.~ r8 sn8 |
}


g_epilogue = \relative fis {
  cis4 fis gis a | b cis d e |
  d, fis gis a | b cis d cis |
  e, fis gis a | b a gis a |

  b, fis' gis a | b a gis fis |
  b, fis' gis a | b a gis fis |
  b, fis' gis a | b a gis fis~ | fis1 |

  d'4 cis b a | b gis fis2~ | fis1 |
}

b_epilogue = \relative c {
  a4 fis8 gis8 a4 b4 | a4 fis8 gis8 a4 b4 |
  a4 fis8 gis8 a4 b4 | a4 fis8 gis8 a4 b4 |
  a4 fis8 gis8 a8 b8 a4 | a4 fis8 gis8 a8 b8 a4 |

  a4 fis8 gis8 a8 b8 a4 | a4 fis8 gis8 a8 b8 a4 |
  a4 fis8 gis8 a8 b8 a4 | a4 fis8 gis8 a8 b8 a4 |
  a4 fis8 gis8 a8 b8 a4 | a4 fis8 gis8 a8 b8 a4~ | a1 |

  d'4 cis b a | gis a fis2~ | fis1 |
}

d_epilogue = \drummode {
  <cymc bd>4 bd bd2 | sn2 sn4. sn8 |
  \repeat unfold 5 { <sn bd>4 bd bd2 | sn2 sn4. sn8 | }
  r1 | r1 | r1 | r1 |
}

\score {
  <<
    {
      \new Staff \with {
	instrumentName = #"Guitar"
	midiInstrument = #"electric guitar (clean)"
      }

      \key fis \minor

      \mark "First" \g_first \bar "||"
      \mark "Chorus" \g_chorus \bar "||"
      \mark "Second" \g_second \bar "||"
      \mark "Chorus" \g_chorus \bar "||"
      \mark "Third" \g_third \bar "||"
      \mark "Epilogue" \g_epilogue \bar "|."
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
        \b_epilogue
      %% }
    }

    {
      \new DrumStaff \with { instrumentName = #"Drums" }
      \d_first
      \d_chorus_first
      \d_second
      \d_chorus_second
      \d_third
      \d_epilogue
    }

    {
      \new Staff \with {
        instrumentName = #"Warm Pad"
        midiInstrument = #"pad 2 (warm)"
      }
      \key fis \minor
      \clef treble

      \relative c''' {
        <<
          { \repeat unfold 7 { <fis cis a>1~ | }
            <fis cis a>1 | }
          \\
          { fis'1~ | fis |
            e~ | e |
            d~ | d |
            cis~ | cis | }
        >>
      }
    }

  >>

  \layout {}
  \midi { \tempo 4 = 200 }
}
