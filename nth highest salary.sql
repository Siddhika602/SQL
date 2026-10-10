-- Q. Find the nth highest salary from the given dataset.
-- Step 1-Select the column which you want to show in the final result i.e. salary
-- Step 2-Order the salary in descending order so that you have the max at first
-- Step 3-Now the value of n could 1,2,3...n so we have to make the query in such a way so that whatever be the value of n it can provide result
-- Step-4-So at the end of the query we will provide a LIMIT so that the dataset which we have got after ordering the salary in desc order, we can fetch the nth highest one.ALTER

-- LIMIT-Limit clause is used to restrict the number of rows returned by a query
-- LIMIT n=It helps to retrieve a maximum of n rows from the beginning of the result set.ALTER
-- LIMIT m,n=It helps to retrive a specific range of rows where m=no of rows to skip form the beginning(n-1) and n=no of rows to fetch after skipping

USE company;
SELECT * FROM employee;

-- 4th highest salary
SELECT DISTINCT salary 
FROM employee
ORDER BY salary DESC
LIMIT 3,1;
