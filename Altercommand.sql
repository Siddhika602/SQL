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

-- rename command
ALTER TABLE employee
RENAME COLUMN emp_age TO age;
