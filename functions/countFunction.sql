-- Counting elements in a table
-- So far we have studied four aggregation functions:

-- MAX()
-- MIN()
-- SUM()
-- AVG()
-- Now we will introduce the COUNT() aggregation function. With this we can count the number of records within a table.

-- SELECT COUNT(*) FROM table

-- Exercise
-- Find the number of records (number of rows) that the table has employees.

-- EMAIL NAME AGE SALARY
-- juan.perez@workmail.com Juan Pérez 30 50,000
-- maria.gonzalez@corp.com Maria González 25 55,000
-- john.doe@techplace.org John Doe 40 60,000
-- francisco@startup.io Francisco 22 45,000



SELECT COUNT(*) FROM employees;