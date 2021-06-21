USE employees;

SELECT * FROM employees
WHERE birth_date LIKE '1954-01%'
ORDER BY birth_date, last_name
LIMIT 20;

SELECT * FROM employees
WHERE birth_date LIKE '1954-01%'
ORDER BY birth_date, last_name
    LIMIT 20 OFFSET 20;