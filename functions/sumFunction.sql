-- Sum of elements in a column
-- So far we have studied two aggregation functions:

-- MAX()
-- MIN()
-- In this exercise we will introduce the SUM() aggregation function. With this we can add all the elements of a column.

-- SELECT SUM(column) FROM table

-- It is important to note that the column on which the SUM() function is applied must contain numeric values, otherwise the query may generate an error or an unexpected result.

-- Exercise:
-- Using the employees table, find the sum of all salaries.

-- EMAIL NAME AGE SALARY
-- juan.perez@workmail.com Juan Pérez 30 50,000
-- maria.gonzalez@corp.com Maria González 25 55,000
-- john.doe@techplace.org John Doe 40 60,000
-- francisco@startup.io Francisco 22 45,000

SELECT SUM(salary) FROM employees;