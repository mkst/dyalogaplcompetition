/
Problem 4 – Bioinformatics
\

// Task 1
cwd:{{(last where "/"=x)#x} ssr[x;"\\";"/"]} {value[.z.s] 7}[]

dna1:raze 1_read0 `$":",cwd,"/Data/rosalind_revp_1_dataset.txt"
dna2:raze 1_read0 `$":",cwd,"/Data/rosalind_revp_2_dataset.txt"

sw:{y#'neg[y]_ next\[x]}
rp:{reverse "TAGC""ATCG"?x}

revp:{raze {(1+where {x~rp x} each sw[x;y]),'y}[x;] each 4 + til 9}

92~count revp dna1
89~count revp dna2

// Task 2
sset:{{mod[2*x;1000000]}/[x;1]}

8~sset 3
551872~sset 857
935424~sset 870
