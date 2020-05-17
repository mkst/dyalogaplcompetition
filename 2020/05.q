/
5: Stepping in the Proper Direction

Write a function that, given a right argument of 2 integers, returns a vector of the integers from the first element of the right argument to the second, inclusively.
\

f:{$[x<=y;x+;x-] til 1 + abs y - x}

3 4 5 6 7 8 9 10~f . 3 10
4 3 2 1 0 -1 -2 -3~f . 4 -3
