-- deletion command
USE xyz;
DELETE FROM employee
WHERE department="IT";

SELECT * FROM employee;

DELETE FROM employee
WHERE name="Raj";

-- selection command
SELECT name,age FROM employee;
SELECT * FROM employee;

-- Where clause
SELECT * FROM employee
WHERE age>25;
