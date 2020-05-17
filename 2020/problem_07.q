/
Problem 7 – UPC
\

// Task 1
CheckDigit:{[digits] mod[10-sum digits*11#3 1;10]}

// Task 2

L:(0001101b;0011001b;0010011b;0111101b;0100011b;0110001b;0101111b;0111011b;0110111b;0001011b);
R:(1110010b;1100110b;1101100b;1000010b;1011100b;1001110b;1010000b;1000100b;1001000b;1110100b);
B:E:101b;
M:01010b;

WriteUPC:{[digits]
  if[not 11~count digits;:-1];
  if[not all digits within 0 9;:-1];
  raze over (B;L 6#digits;M;R 6_ digits;R CheckDigit digits;E)
 }

10100100110111101010001101100010010011011110101010101110010011101101100100001010111001000100101b~WriteUPC 2 3 4 5 2 3 4 5 2 3 4

// Task 3

readUPC:{[bits;retry]
  // break into chunks
  chunks:sums[0 3 7 7 7 7 7 7 5 7 7 7 7 7 7]_ bits;
  // check begin
  if[not B~chunks 0;:-1];
  // check middle
  if[not M~chunks 7;:-1];
  // check end
  if[not E~chunks 14;:-1];
  // check left
  if[not all (l:chunks[1 + til 6]) in L;
    if[not retry;
      // try reversed (50% slower codepath)
      :.z.s[reverse bits;1b]
      ];
    :-1];
  // check right
  if[not all (r:chunks[8 + til 6]) in R;:-1];
  // check check-digit
  if[not digits[11]~CheckDigit 11#digits:(L?l),R?r;:-1];
  // checks passed, return result
  digits
 }

ReadUPC:{[bits]
  // sanity checks
  if[not 1h~type bits;-1];
  if[not 95~count bits;:-1];
  readUPC[bits;0b]
  }

2 3 4 5 2 3 4 5 2 3 4 7~ReadUPC w:WriteUPC 2 3 4 5 2 3 4 5 2 3 4
2 3 4 5 2 3 4 5 2 3 4 7~ReadUPC w2:reverse WriteUPC 2 3 4 5 2 3 4 5 2 3 4
-1~ReadUPC 1,WriteUPC 2 3 4 5 2 3 4 5 2 3 4
-1~ReadUPC @[WriteUPC 2 3 4 5 2 3 4 5 2 3 4;85 + til 7;:;1001000b]
