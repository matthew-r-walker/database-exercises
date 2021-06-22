USE employees;

# use of indexes is part of Query Optimization

SHOW INDEXES FROM employees;

SHOW INDEXES FROM departments;

# Let's say I want some salary info

SELECT salary FROM salaries
WHERE salary BETWEEN 50000 AND 70000;

ALTER TABLE salaries ADD INDEX salary_index (salary);

DROP INDEX salary_index ON salaries;


USE codeup_test_db;

CREATE TABLE IF NOT EXISTS quotes2 (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    content VARCHAR(240) NOT NULL,
    author VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

# forces content to be unique; does not allow duplicate content
ALTER TABLE quotes2 ADD UNIQUE (content);

INSERT INTO quotes2 (content, author)
VALUES ('This is a random quote', 'Rando McRando');