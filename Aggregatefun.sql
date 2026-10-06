-- Aggregate functions-
-- These functions persorms some operation on a set of rows and then return a single value summarizing a data.These are used with SELECT statements to perform operations.ALTER
-- Types- count,sum,avg,min,max,group_concat

-- COUNT()
USE company;
SELECT COUNT(name) FROM employee;

-- SUM()
SELECT SUM(salary) FROM  employee;

-- AVG()
SELECT AVG(age) FROM employee;

-- MIN()
SELECT MIN(salary) FROM employee;

-- MAX()
SELECT MAX(salary) FROM employee;

-- CONCAT
SELECT CONCAT(name) FROM employee;
