USE employees;

SELECT employees.last_name, salaries.salary
FROM employees JOIN salaries
ON employees.emp_no = salaries.emp_no
LIMIT 20;

# SELECT AVG(salary), gender FROM employees
# JOIN salaries ON employees.emp_no = salaries.emp_no
# GROUP BY gender;

USE join_test_db;

# LEFT JOIN

SELECT users.name AS user_name, roles.name AS role_name
FROM users LEFT JOIN roles
ON users.role_id = roles.id;

USE codeup_test_db;

CREATE TABLE IF NOT EXISTS persons (
   person_id INT NOT NULL AUTO_INCREMENT,
   first_name VARCHAR(25) NOT NULL,
   album_id INT NOT NULL,
   PRIMARY KEY (person_id)
);

INSERT INTO persons (first_name, album_id) VALUES ('Olivia', 29), ('Santiago', 27), ('Tareq', 15), ('Anaya', 28);

SELECT p.first_name, a.name FROM persons p JOIN albums a ON p.album_id = a.id;