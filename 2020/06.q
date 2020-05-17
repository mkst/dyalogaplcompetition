/
6: Please Move to the Front

Write a function that, given a right argument which is an integer vector and a left argument which is an integer scalar, reorders the right argument so any elements equal to the left argument come first while all other elements keep their order.
\

f:{y (where x=y),where not x=y}

3 3 1 2 4 1 1 4 5~f[3;1 2 3 4 1 3 1 4 5]
enlist[1]~f[3;1#1]
