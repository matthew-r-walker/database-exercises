USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE de.to_date LIKE '9%';

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e JOIN dept_manager dm
ON e.emp_no = dm.emp_no JOIN departments d LIMIT 10;

# A solution

SELECT d.dept_name AS 'Department Name',
CONCAT(e.first_name, ' ', e.last_name) AS current_department_manager
FROM employees AS e
JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
AND to_date > CURDATE()
JOIN departments AS d USING(dept_no)
ORDER BY dept_name;

SELECT t.title, COUNT(t.title) AS Total
FROM titles as t
         JOIN dept_emp as de
              ON de.emp_no = t.emp_no
WHERE de.dept_no = 'd009' AND YEAR(t.to_date) = '9999' AND YEAR(de.to_date) = '9999'
GROUP BY t.title;