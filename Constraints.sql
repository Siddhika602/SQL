CREATE DATABASE college1;
USE college1;


-- Unique Constraints
CREATE TABLE student(
    phonenbr INT UNIQUE
);
INSERT INTO student(phonenbr)
VALUES
(123),
(456);

-- non null constraints
CREATE TABLE student1(
    age INT,
    rollno INT NOT NULL
);
INSERT INTO Student1(age,rollno)
VALUES(27,1);
