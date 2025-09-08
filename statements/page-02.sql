SELECT * FROM users;

SELECT name, init_date AS 'New ALIAS DATE'  FROM users WHERE age BETWEEN 26 AND 33;

SELECT CONCAT('Name: ', name, ' Surname: ', surname) AS full_name  FROM users;

SELECT MAX(age) FROM users GROUP BY name;
SELECT MAX(age) FROM users GROUP BY age;

-- How many for each group of age
SELECT COUNT(age), age FROM users GROUP BY age;

SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age ASC;

SELECT COUNT(age), age FROM users WHERE age > 25 GROUP BY age ORDER BY age ASC;

SELECT COUNT(age) FROM users HAVING COUNT(age) > 22;
  
SELECT *,  
CASE 
   WHEN age >= 18 THEN True
   ELSE False
END AS 'isMajor'
 FROM users;
 
 --
 
SELECT *,  
CASE 
   WHEN age > 18 THEN True
     WHEN age = 18 THEN 'He/She is major this year'
   ELSE False
END AS 'isMajor'
 FROM users;

-- º -
SELECT name, surname,   IFNULL(age, 0) AS age FROM users;


INSERT INTO users (user_id, name, email) VALUE(
 9, 'María', "maria@gmail.com"
 );

INSERT INTO users (  name, surname, email) VALUE(
 'Marta','Torres Romana', "tr@gmail.com"
 );

UPDATE users SET age = '50' WHERE user_id = 10;

UPDATE users SET age = '50', init_date = '2020-11-01' WHERE user_id = 10;

DELETE FROM users WHERE  user_id = 10;

SELECT * FROM users;


