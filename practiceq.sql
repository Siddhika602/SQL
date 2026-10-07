USE company;
SELECT * FROM employee;

-- PRACTICE QUESTION

-- 1. Write a query to find the total number of employees in each city.
SELECT city,COUNT(name) AS no_of_emp
FROM employee
GROUP BY city;

-- 2. Write a query to find maximum number of employees in each city in descending order.ALTER
SELECT city,max(salary) AS max_salary
FROM employee
GROUP BY city
ORDER BY max_salary DESC;

-- 3.Write a query to display the department names alongside the total count of employees in each department, sorting the results by the total number of employees in descending order.
SELECT department,COUNT(id) AS totalemployees
FROM employee
GROUP BY department
ORDER BY totalemployees DESC;

-- 4. Write a query to list the departments where the average salary is greater than 1200, also display the department name and the average salary
SELECT department,AVG(salary) AS avg_salary
FROM employee
GROUP BY department
HAVING AVG(salary)>1200;
