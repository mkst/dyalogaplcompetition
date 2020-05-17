/
Problem 8 – Balancing the Scales
\

balance:{[nums;target]
  // sort descending
  nums:desc nums;
  // bootstrap queue
  queue:{(1#x;1_x)} each til[count nums]_\:nums;
  // iterate until queue is exhausted
  while[count queue;
    // pop first item from queue
    item:first queue;
    queue:1 _ queue;
    // we are done
    if[all target=sum each item;:item];
    // if remaining items are capable of reaching target
    if[target<sum remaining:last item;
      // remaining items that dont exceed target
      w:where target>=sum[combo:first item]+remaining;
      // depth first search
      queue:flip[(combo,/:remaining w;remaining _/:w)],queue
      ]
  ];
  // no result
  :()
 }

Balance:{[nums]
  // sanity check 1: split results in integers
  if[not total=2*target:div[total:sum nums;2];:()];
  // sanity check 2: no negative numbers
  if[any 0>nums;:()];
  // sanity check 3: 2-item list must contain same item
  if[2=count nums;:$[(=). nums;nums;()]];
  // generate combinations and return sorted
  asc each balance[nums;target]
  }

(1#13;1 1 1 1 1 1 1 1 1 1 1 1 1)~Balance 1 1 1 1 1 1 1 1 1 1 1 1 1 13
(3 7 8;1 2 4 5 6)~Balance 1 + til 8
(3 9 10 11;1 2 4 5 6 7 8)~Balance 1 + til 11
(25 78 85 87 93 98 99;1 5 10 27 28 39 41 46 63 64 76 81 84)~Balance 10 81 98 27 28 5 1 46 63 99 25 39 84 87 76 85 78 64 41 93

\

/ \t Balance 1 + til 512
/ 186
/ \t BalanceR 1 + til 512
/ 1576

/ alternative, (slower) recursive solution
balanceR:{[combo;remaining;target]
    // fast-complete
    if[DONE;:()];
    // solution
    if[(target=sr:sum remaining) and target=sc:sum combo;
      DONE::1b;
      :enlist (combo;remaining)
      ];
    if[target>sr;:()];
    // filter remaining where combos wont exceed target
    w:where target>=sc+remaining;
    raze .z.s[;;target].' flip (combo,/:remaining w;remaining _/:w)
 }

BalanceR:{[nums]
  // sanity check 1: split results in integers
  if[not total=2*target:div[total:sum nums;2];:()];
  // sanity check 2: no negative numbers
  if[any 0>nums;:()];
  // sanity check 3: 2-item list must contain same item
  if[2=count nums;:$[(=). nums;nums;()]];
  DONE::0b;
  // bootstrap
  asc each first raze balanceR[;;target].'{(1#x;1_x)} each til[count nums]_\:nums
 }
