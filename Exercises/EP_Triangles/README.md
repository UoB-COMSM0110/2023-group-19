## EP Table for Triangle Exercise

| Category | Description | Partition |
| --- | --- | --- |
| valid scalene  | valid scalene triangle with sides of different length | some equation |
| valid isosceles | valid scalene triangle with two equal sides | a == b && c != a  (with ordered sides) |
| valid equilateral | three equal sides | a = b = c |
| invalid | one or more sides zero or negative | a <= 0 OR b <= 0 OR c <= 0 |
| invalid | not a number passed into the program | !isDigit(a) && !isDigit(b) && !isDigit(c) |
| invalid | number would overflow the program | (a + b) > Integer.maxVal |
