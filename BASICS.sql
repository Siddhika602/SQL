DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;

CREATE DATABASE IF NOT EXISTS instagramDb;
USE instagramDb;
CREATE TABLE IF NOT EXISTS users(
    userId INT PRIMARY KEY,
    userName VARCHAR(100),
    email VARCHAR(100)
);
CREATE TABLE IF NOT EXISTS posts(
    postId INT PRIMARY KEY,
    userId INT,
    caption VARCHAR(100)
);
INSERT INTO users (userId,userName,email)
VALUES
(1,'siddhika','abs@gmail.com'),
(2,'rahul','xyz@gmail.com'),
(3,'riti','pqr@gmail.com');
INSERT INTO posts (postId,userId,caption)
VALUES
(101,561,'light'),
(102,562,'water'),
(103,563,'air');
USE instagramDb;
SHOW TABLES;
SELECT * FROM users;
SELECT * FROM posts;
