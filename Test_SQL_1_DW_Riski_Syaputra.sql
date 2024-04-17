
SELECT DISTINCT salary AS third_highest_salary
FROM employee_table
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

