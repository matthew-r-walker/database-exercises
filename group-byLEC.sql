USE employees;

SELECT COUNT(*), gender FROM employees GROUP BY gender;

SELECT COUNT(*), last_name FROM employees GROUP BY last_name ORDER BY COUNT(*);

-- Avg age of employees when hired
SELECT AVG(DATEDIFF(hire_date, birth_date)/365) FROM employees;

-- Oldest hired age
SELECT MAX(DATEDIFF(hire_date, birth_date)/365) FROM employees;
-- Youngest hired age
SELECT MIN(DATEDIFF(hire_date, birth_date)/365) FROM employees;

-- GROUP BY combines duplicates into one single value for each group
-- GROUP BY consolidates rows based on a common column

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE 'E%E'
ORDER BY last_name;

SELECT DISTINCT first_name, last_name FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY last_name, first_name;

SELECT COUNT(last_name), last_name FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY last_name
ORDER BY last_name;

SELECT gender, COUNT(*) FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
