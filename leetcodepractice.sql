-- LEETCODE QUESTIONS:-

-- Q-1. (Swap salaries) Write a solution to swap all 'f' and 'm' values with a single update statement and no intermediate temporary tables.
UPDATE Salary
SET Sex=if (Sex='m','f','m');

-- Q-2. (Duplicate Emails) Write a solution to report all the duplicate emails. Note that its guaranteed that the email field is not NULL.Return the result table in any order.
SELECT email
FROM Person
GROUP BY email
HAVING COUNT(email)>1;

-- Q-3. (Employees Earning More Than Their Managers) Write a solution to find the employees who earn more than their managers.
SELECT e1.name AS Employee
FROM Employee e1
JOIN Employee e2
ON e1.managerId=e2.id
WHERE e1.salary>e2.salary;

-- Q-4. (Not Boring Movies) Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".
SELECT * FROM Cinema
WHERE
MOD(id,2)=1 AND description<>"boring"
ORDER BY rating DESC;

-- Q-5. (Classes more than 5 students) Write a solution to find all the classes that have atleast five students.
SELECT class FROM Courses
GROUP BY class
HAVING COUNT(student)>=5;




