SELECT CEILING(AVG(salary) - (AVG(CAST(REPLACE(salary, '0', '') AS INT))))+1
FROM employees;