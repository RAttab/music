\version "2.19.82"

\header {
  title = "Bleh"
  composer = "Bob The Composer"
}

g_first = \relative e'' {
  \repeat unfold 2 { e c a c | e c a c | g' c, a c | fis c a c | }
  \repeat unfold 2 { d ais g ais | d ais g ais | f' ais, g ais | e' ais, g ais | }
  \repeat unfold 2 { d b fis b | d b fis b | fis' b, fis b | e b fis b | }
  \repeat unfold 4 { e d gis, d' | fis d gis, d' | }
}

\score {
  {
    \new Staff \with {
      instrumentName = #"Guitar"
      midiInstrument = #"electric guitar (clean)"
    }

    \key e \minor

    \mark "First" \g_first \bar "||"
  }

  \layout {}
  \midi { \tempo 4 = 300 }
}
