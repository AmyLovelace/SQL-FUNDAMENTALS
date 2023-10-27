-- Left Join
-- With the following data, when doing an INNER JOIN we will not obtain Franscisco in the results, which could be a big mistake if we were making a report for all the students.

-- Users table

-- EMAIL NAME AGE
-- juan.perez@example.com Juan Pérez 30
-- maria.gonzalez@example.com Maria González 25
-- john.doe@example.com John Doe 40
-- francisco@example.com Test User 22
-- Notes table

-- EMAIL NOTES
-- juan.perez@example.com 90
-- maria.gonzalez@example.com 100
-- john.doe@example.com 80
-- juan.perez@example.com 100
-- maria.gonzalez@example.com 100
-- There is a special type of JOIN that all users can bring along with their notes. With LEFT JOIN we can obtain all user data records and their corresponding notes, even if some users do not have associated notes.

-- In a LEFT JOIN, all rows from the left table (in this case, the users table) will appear in the result, and if a user does not have a match in the right table (the notes table), the corresponding fields in the notes table will be filled with NULL values.

-- The Syntax for using LEFT JOIN is similar to INNER JOIN. SELECT * FROM table1 LEFT JOIN table2 ON table1.attribute = table2.attribute

-- Exercise
-- There is a table of employees and another of departments. Using what you have learned, select all employees along with their corresponding departments, including employees who have not yet been assigned to any department. In both tables there is the email column.


SELECT * FROM employees LEFT JOIN departments ON employees.email = departments.email;