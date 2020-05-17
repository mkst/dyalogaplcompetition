/
Problem 5 – Future and Present Value
\

// Task 1
rr:{[amounts;rates] {y + x * 1 + z }\[0;"f"$amounts;rates]}

rr[100 0 20 0 -10 0 0;0 .03 .04 .06 .02 .02 .04]

// Task 2
pv:{[amounts;rates] last rr[amounts;rates] % prd 1 + rates}

pv[-6200 -2000 3400 3850 4300 4750;0 .03 .04 .06 .02 .02]
pv[-800 -3000 -2000 3400 3850 4300;0 .03 .04 .06 .02 .02]
