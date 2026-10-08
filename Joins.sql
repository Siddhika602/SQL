-- JOINS IN SQL
-- Joins are used to combine rows from two or more tables based on related or shared or common column between them

-- Make a database for ecommerce
CREATE DATABASE ecomm;
USE ecomm;

-- Make a customer table in ecommerce database
CREATE TABLE customer(
    id INT,
    name VARCHAR(50)
);

-- Fill details in the table
INSERT INTO customer(id,name)
VALUES
(1,"Rahul"),
(2,"Afsara"),
(3,"Abhimanyu"),
(4,"Aditya"),
(5,"Raj");

-- See all the data
SELECT * FROM customer;
USE ecomm;

-- Make an order table in ecommerce database
CREATE TABLE orders(
    id INT PRIMARY KEY,
    ordername VARCHAR(50)
);

-- Fill details in the TABLE
INSERT INTO orders(id,ordername)
VALUES
(2,"Fruit"),
(3,"Ball"),
(4,"Utensil");

-- See all the data
SELECT * FROM orders;


-- Inner Join:-
-- It only returns rows where there is a matching id in both the tables
SELECT customer.id,orders.ordername,customer.name
FROM customer
INNER JOIN orders
ON customer.id=orders.id;

-- Left Outer Join:-
-- It is used to fetch all the records from the left table along with the matched records from the right table
SELECT customer.id,orders.ordername,customer.name
FROM customer
LEFT JOIN orders
ON customer.id=orders.id;

-- Right Outer Join:-
-- It is used to fetch all the records from the right table along with the matched records from the left record
SELECT customer.id,orders.ordername,customer.name
FROM customer
RIGHT JOIN orders
ON customer.id=orders.id;

-- Full Outer Join
-- It returns the matching rows of both left and right table and also includes all the rows from both the tables even if they dont have matching rows
SELECT customer.id,orders.ordername,customer.name
FROM customer
LEFT JOIN orders
ON customer.id=orders.id
UNION
SELECT customer.id,orders.ordername,customer.name
FROM customer
RIGHT JOIN orders
ON customer.id=orders.id; 


