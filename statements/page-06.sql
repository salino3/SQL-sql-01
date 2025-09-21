
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
