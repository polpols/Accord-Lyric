\version "2.16.0"
\include "predefined-guitar-fretboards.ly"

MyChords = \chordmode { fis1:m |fis1:m|b:m7|b:m7|cis':7|cis	:7| fis1:m |fis1:m }

<<

\new ChordNames { \repeat "unfold" 2 \MyChords}

\new FretBoards { \repeat "unfold" 2 \MyChords}

\relative fis {
\clef treble
   \time 4/4
\repeat "unfold" 2 {cis'4 cis cis2}
}

\addlyrics {
\set stanza = "1. "
All night long |(on the) broken glass| livin in a |medicine chest| mediteromanian |hotel back| sprawled across| a roll top desk|
}
>>