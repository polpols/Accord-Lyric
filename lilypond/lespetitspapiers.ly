\version "2.16.0"
\header {
   title = "Les Petits Papiers"
   composer = "Anonymous"
}
music = \relative c' {

    \clef "treble_8"
    \key d \minor
    \time 2/4
    \partial 4
    f | 
	e d |
	cis8 a a gis|
	a2|
	a4 e'
	f e
	d8 a a gis
	a2
	a4 d
	e d
	cis8 a a gis
	a2
	a4 e'
	f e
	d2
	a'2
	f
	d
	c'8 b b d,
	e2
	e8 g b g
	a f f c
	g2
  

}

<<

\new Staff {\music}
\new TabStaff{
	\transpose c c 
	 \set TabStaff.minimumFret = #5
	\set TabStaff.restrainOpenStrings = ##t
	\music}

>>