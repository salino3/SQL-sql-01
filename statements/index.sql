SELECT * FROM users;

SELECT name FROM users;

SELECT user_id, name FROM users;

SELECT DISTINCT * FROM users;
SELECT DISTINCT name FROM users;

SELECT * FROM users WHERE age = 30;
SELECT DISTINCT name FROM users WHERE age = 30;

SELECT * FROM users ORDER BY `age`;
SELECT * FROM users ORDER BY `age` DESC;
SELECT * FROM users WHERE age = 30 ORDER BY `email` DESC;

INSERT INTO `hello_mysql`.`users` 
(  `name`, `surname`, `age`, `init_date`, `email`) 
VALUES (  'Carlos', 'aaa', '30', '2024-06-01', 'c2@gmail.com');
