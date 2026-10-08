USE ecomm;
-- Exclusive Joins:-
-- When we want to retrive the data from two tables excluding matched rows. They are the part of outer joins.
-- Three types: Left Exclusive,Right Exclusive,Full Exclusive

-- Left excl Join
SELECT * 
FROM customer
LEFT JOIN orders
ON customer.id=orders.id
WHERE orders.id IS NULL;

-- Right excl Join
SELECT *
FROM customer
RIGHT JOIN orders
ON customer.id=orders.id
WHERE customer.id IS NULL;

-- Full excl Join
SELECT * 
FROM customer
LEFT JOIN orders
ON customer.id=orders.id
WHERE orders.id IS NULL
UNION
SELECT *
FROM customer
RIGHT JOIN orders
ON customer.id=orders.id
WHERE customer.id IS NULL;
