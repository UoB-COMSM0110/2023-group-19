## Tax EP
| Category | Desription | Values |
| --- | --- | --- |
| A | Personal Allowance | pay <= (12,570 + Marriage Allowance + Blind Person's Allowance - (income over 100,000) |
| B | Basic rate | $Personal Allowance (see above) <= pay <= 50,270 | 
| C | Higher rate | 50,271 <= pay <= 150,000 |
| D | Additional rate | pay > 150,000 |
| E | Tax relief | business expenses, pension |
| E | Invalid negative pay | pay < 0 |
| F | Invalid pay which would overflow | pay > Integer.Max (long maybe instead?) |
