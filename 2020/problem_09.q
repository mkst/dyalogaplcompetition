/
Problem 9 – Upwardly Mobile
\

cwd:{{(last where "/"=x)#x} ssr[x;"\\";"/"]} {value[.z.s] 7}[]

sanitise:{
  // replace unicode with ascii
  r:2 cut ("\342\224\202";"|";
           "\342\224\214";"<";
           "\342\224\220";">";
           "\342\224\200";"-";
           "\342\224\264";"^");
  ssr/[x;;] . flip r
  };

pad:{(max count each x)$x}

m1:pad sanitise each read0 `$":",cwd,"/Data/mobile1.txt"
m2:pad sanitise each read0 `$":",cwd,"/Data/mobile2.txt"
m3:pad sanitise each read0 `$":",cwd,"/Data/mobile3.txt"

// this is not any fun.

\
{x where 0<count each raze each x}"I"vs'" "vs m1 1

levels:{ where each "^"= x }

// first each where each any "<>"=\:reverse each flip m3

// need to determine the level for each letter A..Z
// need to determine level for each midpoint

// need to determine the distance from midpoint for each letter A..Z
