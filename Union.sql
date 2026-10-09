-- UNION Operator:-
-- Union operator in sql is used to combine the results of two or more SELECT queries into a single result set and gives unique rows by removing duplicate rows.
USE ecomm;
SELECT * FROM customer;
SELECT * FROM orders;
SELECT id FROM customer
UNION
SELECT id FROM orders;

-- UNION ALL operator:-
-- It is used to combine the results of two or more SELECT queries into single result set and gives all rows by not removing duplicate rows
SELECT id FROM customer
UNION ALL
SELECT id FROM orders;
