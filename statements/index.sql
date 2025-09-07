SELECT * FROM users;
/*
Comments
*/
SELECT name FROM users;

SELECT user_id, name FROM users;

SELECT DISTINCT * FROM users;
-- Is a SQL query that retrieves all the unique names
SELECT DISTINCT name FROM users;

SELECT * FROM users WHERE age = 30;
SELECT DISTINCT name FROM users WHERE age = 30;

SELECT * FROM users ORDER BY `age`;
SELECT * FROM users ORDER BY `age` DESC;
SELECT * FROM users WHERE age = 30 ORDER BY `email` DESC;

SELECT * FROM users WHERE email LIKE '%gmail.com';
SELECT * FROM users WHERE email LIKE '%gmail%';

SELECT * FROM users WHERE NOT email LIKE '%gmail.com'; 

SELECT * FROM users WHERE NOT email LIKE '%gmail.com'; 

SELECT * FROM users WHERE NOT email LIKE '%gmail.es' AND age = 30; 

 SELECT * FROM users WHERE (email LIKE '%gmail.es' OR age = 30) AND email IS NOT NULL LIMIT 2;

SELECT * FROM users LIMIT 2;

SELECT * FROM users WHERE email IS NULL;
SELECT * FROM users WHERE email IS NOT NULL;

SELECT MAX(age) FROM users;
SELECT MIN(age) FROM users;

-- Return all the rows data
SELECT * FROM users WHERE age = (SELECT MAX(age) FROM users);

-- Count result of this parameter
SELECT COUNT(email) FROM users;
-- Count result of the table
SELECT COUNT(*) FROM users;

SELECT SUM(age) FROM users;
-- Average
SELECT AVG(age) FROM users;

-- 'IN' only with exact match but is not case-sensitive
SELECT * FROM users WHERE name IN ('Sara', 'bryan'); 
SELECT * FROM users WHERE name IN ("sara"); 

SELECT * FROM users;

INSERT INTO `hello_mysql`.`users` 
(  `name`, `surname`, `age`, `init_date`, `email`) 
VALUES (  'Massimo', 'Torres', '32', '2023-10-01', 'massimo@gmail.es');
