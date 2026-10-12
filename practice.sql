-- INTERVIEW QUESTIONS

-- Q-1. Write the SQL query to a.Create a database company, b.Create a table employee in it, c.delete/drop the database
CREATE DATABASE companyy;
USE company;

CREATE TABLE employeee(
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

DROP DATABASE companyy;

-- Q-2. Write the SQL query to 1.create a table employee, 2.insert data into the table employee, 3.Update salary for all the people in HR department to 20000, 4.Delete data for employee having empId=1, 5.Delete the entire TABLE
CREATE TABLE employee(
    empId INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employee(empId,name,department,salary)
VALUES(1,'Riti','IT',30000),
(2,'Rahul','HR',15000);

UPDATE employees
SET salary=20000
WHERE department='HR';

DELETE FROM employee
WHERE empid=1;

DROP TABLE employee;
DELETE FROM employee;

-- Q-3. Write a query to find the total number of employees working in IT department.
SELECT COUNT(*) FROM employee
WHERE department='IT';

-- Q-4. Write a query to find all the employees taht have their name starting from 'R'.
SELECT * FROM employee WHERE 
name LIKE 'R%';

-- Q-5. Write a query to find unique salaries in employee TABLE
SELECT DISTINCT salary
FROM employee;


