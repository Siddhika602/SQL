USE company;
-- OPERATORS IN SQL

-- Arithmatic operator
SELECT * FROM employee 
WHERE age+1=25;

-- Comparison operator
SELECT * FROM employee
WHERE age>=25;

-- Logical operator
-- AND operator
SELECT * FROM employee
WHERE age>20 AND department="IT";

-- OR operator
SELECT * FROM employee
WHERE age>20 OR department="IT";

-- NOT operator
SELECT * FROM employee
WHERE department NOT IN("IT","HR");

-- IN operator
SELECT * FROM employee
WHERE department IN("IT","HR");

-- IS NULL / NOT NULL operators
SELECT * FROM employee
WHERE department IS NOT NULL;

-- Like/wildcard operator %
SELECT * FROM employee
WHERE name LIKE "A%";

-- Like/wildcard operator _
SELECT * FROM employee
WHERE name LIKE "_A%";

-- BETWEEN operator
SELECT * FROM employee
WHERE salary BETWEEN 1200 AND 1500;
