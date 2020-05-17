/
10: Stacking It Up

Write a function that takes as its right argument a vector of simple arrays of rank 2 or less (scalar, vector, or matrix). Each simple array will consist of either non-negative integers or printable ASCII characters. The function must return a simple character array that displays identically to what {⎕←⍵}¨ displays when applied to the right argument.
\

f:{{(max count each x)$x} $[0h=type x;raze .z.s each x;enlist (),$[10h=abs type x;x;" "sv string x]]}

a:("1 2 3               ";
   "4 5 6               ";
   "7 8 9               ";
   "Adam                ";
   "Michael             ";
   "1 2 3 4 5 6 7 8 9 10";
   "*                   ";
   "1 2 3 4 5           ";
   "6 7 8 9 10          ";
   "11 12 13 14 15      ";
   "16 17 18 19 20      ";
   "21 22 23 24 25      ")

a~f (3 3#1+til 9;("Adam";"Michael");1 + til 10;"*";5 5#1 + til 25)
