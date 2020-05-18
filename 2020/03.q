/
3: Excel-lent Columns

A Microsoft Excel spreadsheet numbers its rows counting up from 1. However Excel's columns are labelled alphabetically — beginning with A–Z, then AA–AZ, BA–BZ, up to ZA–ZZ, then AAA–AAZ and so on.

Write a function that, given a right argument which is a character scalar or non-empty vector representing a valid character Excel column identifier between A and XFD, returns the corresponding column number\
\

f:{(26 sv)1+.Q.A?(),x}

1~f"A"
1104~f"APL"
