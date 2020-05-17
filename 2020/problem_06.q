/
Problem 6 – Merge
\

cwd:{{(last where "/"=x)#x} ssr[x;"\\";"/"]} {value[.z.s] 7}[]

lu:{[dict]
  // wrap keys in @
  k:{"@",string[x],"@"} each key dict;
  // convert values to strings if need be
  v:{$[10h=type x;;string]x} each value dict;
  // if lookup fails, use "???"
  (v,enlist "???")k?
 }

Merge:{[templateFile;jsonFile]
  // create lookup function
  lookup:lu .j.k jsonFile;
  // ugly hack for @@
  templateFile:reverse ssr[reverse templateFile;"@@";"__XX__"];
  // yuck
  b::0b;
  // break into tokens
  tokens::{(where differ 1_{$[y="@";[b::not b;1b];b]}\[" ",x])_ x} templateFile;
  // replace tokens with json values
  merged:raze @[tokens;where tokens like "@*@";lookup];
  // undo @@ hack and break on newlines
  "\n" vs ssr[merged;"__XX__";"@"]
 }

template:"\n"sv read0 `$":",cwd,"/Data/template.txt"
lookup:raze read0 `$":",cwd,"/Data/merge1.json"

Merge[template;lookup]
