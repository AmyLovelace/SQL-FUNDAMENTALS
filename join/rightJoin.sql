-- Right Join
-- While the LEFT JOIN returns all rows from the left table and corresponding matches from the right table (padding with NULL if there is no match), the RIGHT JOIN does the opposite: it returns all rows from the right table and corresponding matches from the left table.

-- Using the previous "users" and "notes" tables, if you want to get all the notes records and the corresponding users, even if there are notes that do not have associated users (which would be atypical in this context, but serves the example ), you can use RIGHT JOIN:

SELECT * FROM table1 RIGHT JOIN table2 ON table1.attribute = table2.attribute

-- Users table

-- EMAIL NAME AGE
-- juan.perez@example.com Juan Pérez 30
-- maria.gonzalez@example.com Maria González 25
-- francisco@example.com Test User 22
-- Notes table

-- EMAIL NOTES
-- juan.perez@example.com 90
-- maria.gonzalez@example.com 100
-- juan.perez@example.com 100
-- maria.gonzalez@example.com 100
-- emilio@example.com 90
-- In this specific example emilio@example.com has notes but we do not have its record in the users table. Using RIGHT JOIN we can display your information.

-- Exercise
-- Given the employees and departments tables, all records of an office's departments and their corresponding employees are requested, even if there are departments without associated employees. In both tables there is the email column.


SELECT * FROM employees RIGHT JOIN departments ON employees.email = departments.email;