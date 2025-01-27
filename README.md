# Uncommon SQL Query Bug: NULL Values and String Comparisons

This repository demonstrates a common, yet subtle, SQL query bug involving NULL values and string comparisons. The bug arises from the implicit handling of NULLs in boolean expressions and the potential for unexpected results when comparing strings without proper consideration for whitespace or case sensitivity. 

The `bug.sql` file contains the erroneous SQL query, while `bugSolution.sql` provides the corrected version.  The README details the problem and the solution.
