\version "2.16.0"

\include "predefined-guitar-fretboards.ly"

\storePredefinedDiagram #default-fret-table \chordmode {a:m6}
                        #guitar-tuning
                        #"5-1;x;4-2;5-3;5-4;x;"
\storePredefinedDiagram #default-fret-table \chordmode {d:m6}
                        #guitar-tuning #"x;3-1;2-2;3-3;2-4;x;"

\storePredefinedDiagram #default-fret-table \chordmode {e':7}
                        #guitar-tuning #"x;7-3;6-2;7-4;5-1;x;"
 
MyChords = \chordmode { a1:m6 | d2:m6 | a2:7 | e':7 | a:m6 }  

<< 
\new ChordNames {\MyChords}
\new FretBoards{
	\override FretBoards.FretBoard #'size = #'1.2
	\override FretBoard #'(fret-diagram-details finger-code) = #'in-dot
	\override FretBoard #'(fret-diagram-details dot-radius) = #0.35
	\override FretBoard #'(fret-diagram-details dot-position) = #0.5
	\override FretBoard  #'(fret-diagram-details fret-count) = #3
	\MyChords
}
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \relative c'' {
      \improvisationOn \MyChords
    }
  }
>>
