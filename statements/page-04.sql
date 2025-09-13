-- SQL hello_school_02
USE test; 

CREATE DATABASE test;

CREATE TABLE persons (
 id int ,
 name varchar(100),
 age int,
 email varchar(50),
 created date
 );
 
 
 
 CREATE TABLE IF NOT EXISTS personsV2 (
 id INT NOT NULL,
 name VARCHAR(100) NOT NULL UNIQUE,
 age INT,
 email VARCHAR(50),
 created DATETIME,
 UNIQUE (email, XXX),
 PRIMARY KEY(id)
);


 
 CREATE TABLE IF NOT EXISTS personsV3 (
 id INT NOT NULL,
 name VARCHAR(100) NOT NULL,
 age INT,
 email VARCHAR(50),
 created DATETIME,
 PRIMARY KEY(id),
 CHECK(age>=18)
);

 CREATE TABLE IF NOT EXISTS personsV4 (
 id INT NOT NULL AUTO_INCREMENT,
 name VARCHAR(100) NOT NULL,
 age INT,
 email VARCHAR(50),
 created DATETIME DEFAULT CURRENT_TIMESTAMP(),
 PRIMARY KEY(id),
 CHECK(age>=18)
);

  CREATE TABLE IF NOT EXISTS personsV5 (
  id INT
  );
  
   
  DROP TABLE personsV5;
  
ALTER TABLE personsV4 ADD SURNAME varchar(150);

ALTER TABLE personsV4 RENAME COLUMN surname TO  surnames;

ALTER TABLE personsV4 MODIFY COLUMN surnames varchar(250);

ALTER TABLE personsV4 DROP COLUMN surnames;
  
SELECT * FROM personsV4;
