```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000 AND salary IS NOT NULL;
```
This improved query explicitly checks for `NULL` values in the `salary` column, ensuring that only employees with salaries greater than 100000 are included.  For robust string comparisons, consider using the following:

```sql
SELECT * FROM employees WHERE TRIM(department) = 'Sales' AND salary > 100000 AND salary IS NOT NULL;
```
The `TRIM()` function removes leading and trailing spaces from the `department` column, thus avoiding potential comparison failures.  Depending on your database system, you may need to use `UPPER()` or `LOWER()` to handle case insensitivity.  For example, `UPPER(TRIM(department)) = 'SALES'` would work regardless of the case of the characters in the department column.