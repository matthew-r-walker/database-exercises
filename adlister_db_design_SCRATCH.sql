DROP DATABASE adlister_test_db;

CREATE DATABASE IF NOT EXISTS adlister_test_db;

USE adlister_test_db;


CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(100) NOT NULL,
    user_email VARCHAR(150) NOT NULL,
    user_pass VARCHAR(150) NOT NULL,
    PRIMARY KEY (id)
);

TRUNCATE users;

INSERT INTO users (first_name, last_name, user_email, user_pass)
    VALUES ('Jim', 'Bob', 'jimbob@jimbob.com', '12345'),
            ('Bil', 'Bo', 'baggins@lotr.com', 'precious');


CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(150) NOT NULL,
    description VARCHAR(500) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id),
    PRIMARY KEY (id)
);


TRUNCATE ads;

INSERT INTO ads (user_id, title, description)
    VALUES (1, 'Honda Civic for sale', 'Very clean garage kept low mileage'),
            (2, 'Ring for sale', 'Ordinary gold 24k ring in good condition'),
            (2, 'Robe for sale', 'Grey robe slightly used smells of magic');

CREATE TABLE categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    category VARCHAR(100),
    PRIMARY KEY (id)
);

INSERT INTO categories (category)
    VALUES ('Auto'), ('Home & Garden'), ('Outdoor equipment'), ('Jewelery');

CREATE TABLE ad_categories (
    ad_id INT UNSIGNED NOT NULL,
    category_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES ads (id),
    FOREIGN KEY (category_id) REFERENCES categories (id)
);

INSERT INTO ad_categories (ad_id, category_id)
    VALUES (1, 1), (2, 2), (2, 4);

SELECT u.user_email FROM users u WHERE u.id IN (SELECT ads.id FROM ads WHERE user_id = id AND ads.id = 2);

SELECT c.category FROM categories c
JOIN ad_categories ac ON c.id = ac.category_id
WHERE ac.ad_id = 2;

SELECT title, description FROM ads a
JOIN ad_categories ac ON a.id = ac.ad_id
WHERE category_id = 2;

SELECT * FROM ads a
WHERE user_id = 2;

