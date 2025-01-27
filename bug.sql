```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This query might seem correct, but it could produce unexpected results if there are any NULL values in the `salary` column for employees in the 'Sales' department.  The `salary > 100000` condition will treat NULL as neither greater than nor less than 100000, effectively excluding those employees.

Another subtle issue is the use of `=` for string comparison.  If there are leading or trailing spaces in the `department` column, the comparison might fail. Case sensitivity could also be an issue, depending on the database system.
