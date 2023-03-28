-- create nycflights database
CREATE DATABASE IF NOT EXISTS nycflights;

-- create user 
CREATE USER IF NOT EXISTS 'datakolektiv'@localhost IDENTIFIED BY 'datakolektiv123';

-- grant our user fill privileges on nycflights database
GRANT ALL PRIVILEGES ON nycflights.* TO 'datakolektiv'@localhost;

-- make sure mariadb reloads privileges
FLUSH PRIVILEGES;

