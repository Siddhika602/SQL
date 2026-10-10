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
