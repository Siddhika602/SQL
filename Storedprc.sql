-- STORED PROCEDURE IN SQL:-
-- These are the programs that can perform specific tasks based on the stored query. It is basically a collection of pre-written SQL statements grouped together under a specific name.
USE ecomm;

-- Stored procedure without parameter
-- Create a procedure to get all order details
DROP PROCEDURE IF EXISTS getOrderDetails;
DELIMITER //
CREATE PROCEDURE getOrderDetails()
BEGIN
SELECT * FROM orders;
END //

DELIMETER ;

CALL getOrderDetails();

-- Stored procedure with parameter
CREATE PROCEDURE getAllOrderDetailsById(IN id INT)
BEGIN
SELECT * FROM orders WHERE id=id;
END;

CALL getOrderDetailsById(2);


-- VIEWS IN SQL
-- A view is a virtual table in SQL. It helps in provinding a filtered view of data for security purpose.
USE company;
CREATE VIEW employeeView AS 
SELECT id,name,city FROM employee;

SELECT id FROM employeeView;

