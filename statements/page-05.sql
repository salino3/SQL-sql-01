
 CREATE TABLE IF NOT EXISTS dni (
 dni_id int AUTO_INCREMENT PRIMARY KEY,
 dni_number int NOT NULL,
 id_usuario  int, -- <- arbitrary name same as FOREIGN KEY, same or not with relationed REFERENCES users (user_id)
 UNIQUE(dni_id),
 FOREIGN KEY (id_usuario) REFERENCES users (user_id)
 );

 -------

  CREATE TABLE IF NOT EXISTS dni (
 dni_id int AUTO_INCREMENT PRIMARY KEY,
 dni_number int NOT NULL,
 user_id int,
 UNIQUE(dni_id),
 FOREIGN KEY (user_id) REFERENCES users (user_id)
 );
 
 
 CREATE TABLE IF NOT EXISTS companies(
  company_id int AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL
 );
 
  CREATE TABLE IF NOT EXISTS languages(
  language_id int AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL
 );
 
 
   CREATE TABLE IF NOT EXISTS users_languages(
  users_languages int AUTO_INCREMENT PRIMARY KEY,
  user_id int,
  language_id int,

FOREIGN KEY(user_id) REFERENCES users(user_id),
FOREIGN KEY (language_id) REFERENCES languages(language_id),
UNIQUE (user_id, language_id)
 );
 
 
 ALTER TABLE users
ADD COLUMN company_id INT;
 
 ALTER TABLE users 
   ADD CONSTRAINT 
 fk_company 
 FOREIGN KEY (company_id) REFERENCES companies(company_id);
 
  
 -- JOIN

 SELECT * FROM users 
INNER JOIN dni
ON users.user_id = dni.user_id
;

SELECT companies.name, user.name FROM companies 
JOIN users
ON companies.company_id = users.company_id;


SELECT users.name, languages.name 
FROM users_languages
INNER JOIN user ON users_languages.user_id = users.user_id
JOIN languages ON user_languages.language_id = languages.language_id