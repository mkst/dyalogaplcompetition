/
8: Zigzag Numbers

A zigzag number is an integer in which the difference in magnitude of each pair of consecutive digits alternates from positive to negative or negative to positive.

Write a function that takes a single integer greater than or equal to 100 and less than 10^15 as its right argument and returns a 1 if the integer is a zigzag number, 0 otherwise.
\

f:{(s~c#1 -1i) or ((c:count s)#-1 1i)~s:signum 1_ deltas"J"$'string x}

0b~f 123
1b~f 132
0b~f 31115
1b~f 3141514131415
