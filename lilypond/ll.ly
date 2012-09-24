<<
\version "2.16.0"

\new Voice = "Chords" {
	\textLengthOn
    % Set global properties of fret diagram
    \override TextScript #'size = #1.2
    \override TextScript
      #'fret-diagram-details #'finger-code = #'below-string
    \override TextScript #'fret-diagram-details #'dot-color = #'black

		  cis^\markup {
      % 110% of default size
      \override #'(size . 1.1) {
        \override #'(fret-diagram-details . (
                     (number-type . arabic)
                     (dot-label-font-mag . 0.9)
                     (finger-code . in-dot)
                     (fret-label-font-mag . 0.6)
                     (fret-label-vertical-offset . 0)
                     (label-dir . -1)
                     (mute-string . "M")
                     (xo-font-magnification . 0.4)
                     (xo-padding . 0.3))) {
          \fret-diagram-verbose #'((mute 6)
                                   (place-fret 5 4 3)
                                   (place-fret 4 3 2)
                                   (place-fret 3 4 4)
                                   (place-fret 2 2 1)
                                   (mute 1))
        }
      }
    }
 fis^\markup {
      % 110% of default size
      \override #'(size . 1.1) {
        \override #'(fret-diagram-details . (
                     (number-type . arabic)
                     (dot-label-font-mag . 0.9)
                     (finger-code . in-dot)
                     (fret-label-font-mag . 0.6)
                     (fret-label-vertical-offset . 0)
                     (label-dir . -1)
                     (mute-string . "M")
                     (xo-font-magnification . 0.4)
                     (xo-padding . 0.3))) {
          \fret-diagram-verbose #'(
                                   (place-fret 6 2 2)
									(mute 5 )
                                   (place-fret 4 1 1)
                                   (place-fret 3 2 3)
                                   (place-fret 2 2 4)
                                   (mute 1))
        }
      }
    }

	b^\markup {
      % 110% of default size
      \override #'(size . 1.1) {
        \override #'(fret-diagram-details . (
                     (number-type . arabic)
                     (dot-label-font-mag . 0.9)
                     (finger-code . in-dot)
                     (fret-label-font-mag . 0.6)
                     (fret-label-vertical-offset . 0)
                     (label-dir . -1)
                     (mute-string . "M")
                     (xo-font-magnification . 0.4)
                     (xo-padding . 0.3))) {
          \fret-diagram-verbose #'((mute 5)(mute 1)
                                   (place-fret 6 7 2)
                                   (place-fret 4 6 1)
                                   (place-fret 3 7 3)
                                   (place-fret 2 7 4))
        }
      }
    }

}
>>
