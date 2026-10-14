-- LEETCODE QUESTIONS:-

-- Q-1. (Swap salaries) Write a solution to swap all 'f' and 'm' values with a single update statement and no intermediate temporary tables.
UPDATE Salary
SET Sex=if (Sex='m','f','m');

-- Q-2. (Duplicate Emails) Write a solution to report all the duplicate emails. Note that its guaranteed that the email field is not NULL.Return the result table in any order.
SELECT email
FROM Person
GROUP BY email
HAVING COUNT(email)>1;
