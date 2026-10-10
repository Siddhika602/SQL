-- Subquery/nestedquery/innerquery:-
-- It is a query nested within another SQL statement.Whenever we want to retieve the data based on the result of another query we use nested query.
USE company;
SELECT * FROM employee;

-- USING WHERE CLAUSE
-- To find the employees who have salary greater than the minimum salary
-- min salary
SELECT MIN(salary)
FROM employee;

-- salary>min(salary)
SELECT name,salary
FROM employee
WHERE salary>(SELECT MIN(salary)
FROM employee);

-- To find the employees with minimum age
-- min age
SELECT MIN(age)
FROM employee;

-- age=min(age)
SELECT name,age
FROM employee
WHERE age=(SELECT MIN(age)
FROM employee);

-- USING FROM CLAUSE
-- Find employees who is having age greater than minimum age
-- min age
SELECT MIN(age) AS min_age
FROM employee;

-- age>min_age
SELECT emp.name,emp.age
FROM employee emp,(SELECT MIN(age) AS min_age
FROM employee) AS subquery
WHERE emp.age>subquery.min_age;

-- Print the employees with the average age and age of employees
-- average age
SELECT AVG(age) AS avg_age
FROM employee;

-- avg age and age
SELECT (SELECT AVG(age) AS avg_age
FROM employee) AS avg_age,age
FROM employee;
