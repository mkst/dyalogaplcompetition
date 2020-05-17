/
Problem 2 – Another Step in the Proper Direction
\

Steps:{[p;fromTo]
  // p=0 or null p cases
  if[p in (::;0);:({$[x<=y;x+;x-] til 1 + abs y - x}. fromTo) p];
  // negative p, take p number of equally sized steps
  if[0>P:p;p:({abs y - x}. fromTo) % abs p];
  // handle calculation of zero-sized steps
  if[p=0;:(P-1)#first fromTo];
  // calculate number of steps required
  steps:ceiling ({abs y - x}. fromTo) % p;
  // generate equally sized steps
  res:({$[x<=y;x+;x-]}. fromTo) p * til 1 + steps;
  // ceiling/floor so we dont overstep the To
  max[fromTo]&min[fromTo]|res
  };

4 3 2 1 0 -1 -2 -3~Steps[::;4 -3]
4 3 2 1 0 -1 -2 -3~Steps[1;4 -3]
-3 -1.5 0 1.5 3 4~Steps[1.5;-3 4]
4 2.5 1 -0.5 -2 -3~Steps[1.5;4 -3]
42 42 42 42 42~Steps[-4;42 42]
3000 3429 3857 4286 4714 5143 5571 6000~"j"$1000*Steps[-7;3 6]
