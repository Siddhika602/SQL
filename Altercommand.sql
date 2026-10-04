USE xyz;

-- ALTER COMMAND

-- add a column
ALTER TABLE employee
ADD dob VARCHAR(20) DEFAULT "np";

SELECT * FROM employee;

-- drop a column
ALTER TABLE employee
DROP column dob;

-- modify a column
ALTER TABLE employee
MODIFY age VARCHAR(3);

-- change the name of an existing column
ALTER TABLE employee
CHANGE age emp_age VARCHAR(3);

-- Rename command
ALTER TABLE employee
RENAME COLUMN emp_age TO age;

-- Rename command for table
RENAME TABLE employee TO employees;
SELECT * FROM employees;

-- Rename command for column
ALTER TABLE employees
RENAME COLUMN name TO emp_name;

