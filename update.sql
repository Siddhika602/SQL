-- 1. Make a Database for a company xyz
CREATE DATABASE xyz;
USE xyz;

-- 2. Make an employee table in the xyz database
CREATE TABLE employee(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    city VARCHAR(50),
    salary INT
);

-- 3. Fill details in the TABLE
INSERT INTO employee(id,name,age,department,city,salary)
VALUES
(1,"Rahul",25,"IT","Mumbai",1500),
(2,"Afsara",26,"HR","Pune",2000),
(3,"Abhimanyu",27,"IT","Mumbai",2500),
(4,"Aditya",25,"Marketing","Surat",2400),
(5,"Raj",24,"Finance","Indore",1500);

-- 4. See all the data
SELECT * FROM employee;

-- updation
UPDATE employee
SET salary=50000
WHERE department="HR";

SET SQL_SAFE_UPDATES=0;

UPDATE employee
SET name="raj"
WHERE name="raaj";
