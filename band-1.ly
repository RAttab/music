\version "2.19.80"

\header {
  title = "Band Song #1"
}

fill-a = \drummode {
  <hhp bd>4 <hhp ss>8 <hhp bd> <hhp sn>16 <hhp sn bd> hhp <hhp sn> <hhp sn>8 <hhp sn> |
}

fill-b = \drummode {
  <hhp bd>4 <hhp sn>8 <hhp bd> <hhp sn>16 <hhp sn bd> hhp <hhp sn> <hhp sn>8 <hhp sn>16 sn |
}

fill-c = \drummode {
  <hhp bd>8 hhp <hhp sn> <hhp bd> <hhp bd> hhp <hhp sn>8 sn16 sn |
}

fill-d = \drummode {
  <hhp bd>8 hhp <hhp sn> <hhp bd> hhp16 <sn bd> hhp sn <hhp sn> sn <hhp sn> sn |
}

fill-e = \drummode {
  <hhp bd>8 hhp <hhp sn> <hhp bd> hhp16 <sn bd> hhp sn hhp8 <hhp sn>16 sn |
}

fill-f = \drummode {
  <hhp bd>8 hhp <hhp sn> <hhp bd> hhp16 <sn bd> hhp sn <hhp sn> r <hhp sn> sn |
}


intro = \drummode {
  \repeat volta 3 { bd4 ss8 bd bd4 ss | }
  bd4 ss8 bd hhp16 <hhp bd> hhp <hhp ss> hhp8 hhp |

  \mark "x3"
  \repeat volta 3 { <hhp bd>8 hhp <hhp ss> <hhp bd> <hhp bd> hhp <hhp ss> hhp | }
}

main = \drummode {
  <hhp bd>8 hhp <hhp sn> <hhp bd> <hhp bd> hhp <hhp sn> hhp |
}

music = <<
  \new DrumStaff \with { instrumentName = #"Drums" }

  {
    \time 4/4
    \mark "Intro x3" \intro \fill-a

    \main \fill-b
    \main \fill-c
    \main \fill-d
    \main \fill-e
    \main \fill-f
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
