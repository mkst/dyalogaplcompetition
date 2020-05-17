/
4: Take a Leap

Write a function that, given a right argument which is an integer array of year numbers greater than or equal to 1752 and less than 4000, returns a result of the same shape as the right argument where 1 indicates that the corresponding year is a leap year (0 otherwise).

A leap year algorithm can be found https://en.wikipedia.org/wiki/Leap_year#Algorithm.
\

f:{0 1{((x and z) or x and not y)}. not x mod/:4 100 400}

a:(0 0 0 1 0 0 0 1 0 0;
   0 1 0 0 0 1 0 0 0 1;
   0 0 0 1 0 0 0 1 0 0;
   0 1 0 0 0 1 0 0 0 1;
   0 0 0 1 0 0 0 1 0 0;
   0 1 0 0 0 1 0 0 0 1;
   0 0 0 1 0 0 0 1 0 0;
   0 1 0 0 0 1 0 0 0 1;
   0 0 0 1 0 0 0 1 0 0;
   0 1 0 0 0 1 0 0 0 1)

a~f 10 10#1901 + til 100
