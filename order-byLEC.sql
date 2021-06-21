USE employees;

-- Organize search results by birthday - Sorts
SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date;

-- For same birthdays organize by last name
SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date, last_name;

-- Organize birthdays by seniority
SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date, hire_date;