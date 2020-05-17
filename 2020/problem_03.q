/
Problem 3 – Past Tasks Blast
\

PastTasks:{[url]
  // fetch remote page
  html:.Q.hg url;
  // extract hrefs that contain .pdf
  anchors:{x where x like "*.pdf*" } ss[html;"<a "] _ html;
  // extract hyperlink from each anchor
  pdfs:{ 9_(4+first ss[x;".pdf"])#x} each anchors;
  // join url with links
  (last[1+where "/"=url]#url),/:pdfs
  };

PastTasks "https://www.dyalog.com/student-competition.htm"
