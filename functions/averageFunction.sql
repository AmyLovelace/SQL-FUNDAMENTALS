-- Average of a column
-- So far we have studied three aggregation functions:

-- MAX()
-- MIN()
-- SUM()
-- In this exercise we will learn how to calculate averages with the AVG() aggregation function. The name of the function comes from the English term average

-- SELECT AVG(column) FROM table

-- Exercise
-- Using the employees table, find the average of all salaries.

-- EMAIL NAME AGE SALARY
-- juan.perez@workmail.com Juan Pérez 30 50,000
-- maria.gonzalez@corp.com Maria González 25 55,000
-- john.doe@techplace.org John Doe 40 60,000
-- francisco@startup.io Francisco 22 45,000

SELECT AVG(salaries) FROM employees;