\version "2.19.82"

\header {
  title = "Blah"
  composer = "Bob The Composer"
}

d_main = \drummode {
  \repeat unfold 3 { <bd tomfl>4 tomfl sn tomh8 tomh~ | tomh toml toml4 sn tomfl | }
  <bd tomfl>4 tomfl sn tomh8 tomh~ | tomh toml toml4 sn8 bd sn sn |

  <cymc bd>4 tomfl <sn bd> tomh8 tomh | bd toml <toml bd>4 sn tomfl |
  \repeat unfold 2 { <tomfl bd>4 tomfl <sn bd> tomh8 tomh | bd toml <toml bd>4 sn tomfl | }
  <tomfl bd>4 tomfl <sn bd> tomh8 tomh | bd toml <toml bd>4 sn8 bd sn sn |

  <cymc bd>4 tomfl <sn bd> tomh8 tomh | bd toml <toml bd>4 sn tomfl |
  \repeat unfold 2 { <cyms bd>4 tomfl <sn bd> tomh8 tomh | bd toml <toml bd>4 sn tomfl | }
  <cyms bd>4 tomfl <sn bd> tomh8 tomh | bd toml <toml bd>4 sn8 bd sn sn |

  cymc1 | r2 sn8 sn sn sn |
}


\score {
  {
    \new DrumStaff \with { instrumentName = #"Drums" }
    \repeat unfold 8 { \d_main }
  }

  \layout {}
  \midi { \tempo 4 = 200 }
}
