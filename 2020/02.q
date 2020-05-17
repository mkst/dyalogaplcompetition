/
2: Character Building

UTF-8 encodes Unicode characters using 1-4 integers for each character. Dyalog APL includes a system function, ⎕UCS, that can convert characters into integers and integers into characters. The expression 'UTF-8'∘⎕UCS converts between characters and UTF-8.

The rule is that an integer in the range 128 to 191 (inclusive) continues the character of the previous integer (which may itself be a continuation). With that in mind, write a function that, given a right argument which is a simple integer vector representing valid UTF-8 text, encloses each sequence of integers that represent a single character, like the result of 'UTF-8'∘⎕UCS¨'UTF-8'∘⎕UCS but does not use any system functions (names beginning with ⎕)
\

f:{($[first w;0,;] w:where not x within 128 191)_ x}

(1#68;194 165;226 141 186;226 140 138;240 159 148 178;1#57)~f 68 194 165 226 141 186 226 140 138 240 159 148 178 57
(1#'68 121 97 108 111 103)~f 68 121 97 108 111 103
