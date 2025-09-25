
CREATE INDEX idx_name ON users(name); 

CREATE UNIQUE INDEX idx_name ON users(name);

-- Composite index
CREATE INDEX idx_email_age ON users(email, age);

-- Optimus with
SELECT * FROM users WHERE email = 'ejemplo@correo.com' AND age = 30;
-- Or
SELECT * FROM users WHERE email = 'ejemplo@correo.com';
-- Not with
SELECT * FROM users WHERE age = 30;

DROP INDEX idx_name ON users;


---
-- TRIGGER
 
CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email <> NEW.email THEN
        INSERT INTO email_history(user_id, email)
        VALUES (OLD.user_id, OLD.email);
    END IF;
END;


 
-- For MySQl
DELIMITER $$

CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email <> NEW.email THEN
        INSERT INTO email_history(user_id, email)
        VALUES (OLD.user_id, OLD.email);
    END IF;
END$$

DELIMITER ;

UPDATE users SET email = 'new_email@gmail.com' WHERE user_id = 2;

DROP TRIGGER tg_email;

--
CREATE VIEW v_users_adult AS 
SELECT name, age
FROM users 
WHERE age >= 18;

SELECT * FROM v_users_adult;

DROP VIEW v_users_adult;

-- 5.34

DELIMITER //
CREATE PROCEDURE p_all_users()
BEGIN
  SELECT * FROM  users; 
 END;

CALL p_all_users;

DROP PROCEDURE p_age_users;

 DELIMITER //
CREATE PROCEDURE p_age_major_than(IN age_param INT)
BEGIN
  SELECT * FROM  users WHERE  age > age_param; 
 END;

 CALL p_age_major_than(17);

 -- Nodejs
 const ageParam = 18;
const result = await pool.query('CALL p_age_major_than($1);', [ageParam]);


---

CREATE PROCEDURE p_adult_users()
BEGIN
    SELECT id, name, age, city
    FROM users
    WHERE age > 18;
END //

DELIMITER ;


-- Add permition just for one user
GRANT EXECUTE ON PROCEDURE p_adult_users TO 'user_viewer'@'localhost';

CALL p_adult_users();

