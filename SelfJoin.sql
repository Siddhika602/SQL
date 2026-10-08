-- Self Join:-
-- Join with itself is called as self join
-- Make a Database for a school
CREATE DATABASE school2;
USE school2;

-- Make  a student table in the school database
CREATE TABLE student(
    s_id INT,
    name VARCHAR(50),
    mentor_id INT
);

-- Fill details in the TABLE
INSERT INTO student(s_id,name,mentor_id)
VALUES
(1,"Ram",NULL),
(2,"Rahul",1),
(3,"Riti",1),
(4,"Riya",3);

-- See all the data
SELECT * FROM student;

SELECT s1.name as mentor_name,s2.name as student_name
FROM student as s1
JOIN student as s2
WHERE s1.s_id=s2.mentor_id;


