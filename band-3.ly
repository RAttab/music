\version "2.19.80"
\include "swing.lyi"

\header {
  title = "Band Song #3"
}

verse_base = \drummode {
  <hhp tomfl bd>8 [ <tomfl bd> ]
  <hhp toml> [ toml ]
  <hhp tomfl bd> [ <tomfl bd> ]
  <hhp toml> [ toml ]
}

verse_mid = \drummode {
  <hhp tomfl bd>8 [ <tomfl bd> ]
  <hhp toml> [ toml ]
  \tuplet 3/2 { <hhp tomfl bd> tomfl <tomfl bd> }
  <hhp toml> [ toml ]
}

verse_end = \drummode {
  <hhp tomfl bd>8 [ <tomfl bd> ]
  <hhp toml> [ toml ]
  <hhp tomfl bd> [ <tomfl bd> ]
  <hhp toml>  \tuplet 3/2 { tomfl16 tomfl tomfl } |
}

verse_both = \drummode {
  <hhp tomfl bd>8 [ <tomfl bd> ]
  <hhp toml> [ toml ]
  \tuplet 3/2 { <hhp tomfl bd> tomfl <tomfl bd> }
  <hhp toml>  \tuplet 3/2 { tomfl16 tomfl tomfl } |
}


intro = \drummode {
  \mark "Intro"
  \verse_end
  \verse_mid
  \verse_end
  \verse_mid
  \verse_end
  \verse_base
  \verse_end
  \verse_base
  \verse_mid
  \verse_end
  \verse_base
  \verse_base
  \verse_mid
}

verse = \drummode {
  \mark "Verse"
  \verse_end
  \verse_mid
  \verse_mid
  \verse_mid
  \verse_end
  \verse_mid
  \verse_mid
  \verse_both
  \verse_end
  \verse_mid
  \verse_mid
  \verse_both
  \verse_mid
  \verse_end
  \verse_mid

  \tuplet 3/2 { <cymc bd>8 sn sn }
  \repeat unfold 3 \tuplet 3/2 { sn sn sn } |
}

chorus = \drummode {
  \mark "Chorus x3"

  \repeat volta 3 {
    <cymca bd>8 [ bd ]
    <hho sn> [ bd ]
    <hho bd> [ bd ]
    <hho sn> [ bd ] |

    <cymca bd>8 [ bd ]
    <hho sn> [ bd ]
    <cymca bd> [ bd ]
    <hho sn> [ sn ] |
  }

  <cymca bd>8 [ bd ]
  <hho sn> [ bd ]
  <hho bd> [ bd ]
  <hho sn> [ <cymca bd> ] |

  <cymca bd>8 [ bd ]
  <hho sn> [ <cymca bd> ]
  <cymca bd> [ bd ]
  <hho sn> [ cymcb ] |
}

interlude = \drummode {
  \mark "Interlude x2"

  \repeat volta 2 {
    \verse_end
    \verse_mid
  }
}

bridge = \drummode {
  \mark "Bridge x3"

  \repeat volta 3 {
    <cymca bd>8 [ <tomml bd> ]
    sn [ tomml ]
    <tomml bd> [ <tomml bd> ]
    sn [ tomml ] |

    <cymca bd>8 [ <toml bd> ]
    sn [ toml ]
    <toml bd> [ <toml bd> ]
    sn [ toml ] |
  }

  <cymca bd>8 [ <tomml bd> ]
  sn [ tomml ]
  <tomml bd> [ <tomml bd> ]
  sn [ tomml ] |

  <cymca bd>8 [ <cymcb bd> ]
  \tuplet 3/2 { sn sn toml }
  <cymca bd>8 [ <cymcb bd> ]
  \tuplet 3/2 { sn sn toml }
}

verse_alt = \drummode {
  \mark "Verse"

  \verse_end
  \verse_mid
  \verse_mid

  <hhp tomfl bd>8 [ <tomfl bd> ]
  <hhp toml> [ toml ]
  <hhp tomfl bd>4
  \tuplet 3/2 { cymra8 cymra rb } |

  \verse_end
  \verse_mid
  \verse_mid
  \verse_mid
  \verse_end
  \verse_mid
  \verse_mid
  \verse_both
  \verse_mid
  \verse_end
  \verse_mid

  \tuplet 3/2 { <cymc bd>8 sn sn }
  \repeat unfold 3 \tuplet 3/2 { sn sn sn } |

  \tuplet 3/2 { <cymc bd>8 sn sn }
  \tuplet 3/2 { sn sn sn }
  \tuplet 3/2 { <cymc bd>8 sn sn }
  \tuplet 3/2 { <cymc bd>8 sn sn } |
}

outro = \drummode {
  \mark "Outro x8"

  \repeat volta 8 {
    \verse_end
    \verse_mid
  }
}

music = <<
  \new DrumStaff \with { instrumentName = #"Drums" }

  {
    \swing

    \time 1/4 \drummode { r8 hho | }

    \time 4/4
    \intro
    \verse
    \chorus
    \interlude
    \verse
    \chorus
    \bridge
    \chorus
    \interlude
    \verse_alt
    \chorus
    \chorus
    \outro
  }
>>

\score {
  \music
  \layout { }
}

\score {
  \unfoldRepeats { \music }
  \midi { }
}
