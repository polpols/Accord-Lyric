music = \relative c' {

g,8 a bes d
g a bes d 

g d c bes
a g d bes

\break

g' a c a 
bes c d f

a bes a g\2 
f\2 d\2 b\3 g\4

\break

c, d ees g 
c d ees g 

c, d ees g 
c, d ees g 

\break

bes a g fis a
g d bes

g, a bes d 
g a bes d 

\break

g a c bes 
g\2 d\3 c\3 bes\4

ees,\5 e\5 g\4 bes\4 
a\4 c\3 ees\3 fis\2

\break

a g\2 fis\2 a 
g\2 d\3 bes\4 g\4

\break

}
\new StaffGroup <<
  \new Staff {
    \clef "treble_8"
    \music
  }
  \new TabStaff {
    \music
  }
>>
