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

-- Clause in SQL
-- Clause are like tools/conditions that help us to make queries more specific or decide which data to fetch.

-- Where clause
SELECT * FROM employee
WHERE age>21;

-- Limit clause
SELECT * FROM employee
LIMIT 2;

-- order by clause
SELECT * FROM employee
ORDER BY salary DESC;
-- by default is in ascending order


-- BETWEEN operator
SELECT * FROM employee
WHERE salary BETWEEN 1200 AND 1500;

-- GroupBy clause- group rows that have the same value into together
SELECT department,AVG(salary) AS avgsal
FROM employee
GROUP BY(department);

-- Having clause- like where clause but it works on the aggregated data
SELECT department, AVG(salary) AS avg_sal
FROM employee
GROUP BY department
HAVING avg_sal>1500;


