/
Problem 1 – Take a Dive (1 task)
\

DiveScore:{[dd;scores]
  // number of items to d(rop) from scores
  d:3 5 7?count scores;
  // drop from front and back of sorted scores, sum and multiply by difficulty
  dd * sum neg[d] _ d _ asc scores
  };

61.6~DiveScore[2.8;7 7.5 6.5 8 8 7.5 7]
63.8 67.6 60.75~2.9 2.6 2.7 DiveScore'(7 7.5 6.5 8 8 7.5 7;9.5 8 8.5;7.5 7 7 8.5 8)
