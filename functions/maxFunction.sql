-- The largest value of a column
-- In SQL there are functions that allow us to execute operations on a set of results. These are called aggregation functions.

-- In this exercise we will work with the MAX() function which allows us to find the highest value of the field that we specify.

-- A query with the max function looks like this:

-- SELECT MAX(column) FROM table

-- For example, you have a table called employees with the following data:

-- EMAIL NAME AGE SALARY
-- juan.perez@workmail.com Juan Pérez 30 50,000
-- maria.gonzalez@corp.com Maria González 25 55,000
-- john.doe@techplace.org John Doe 40 60,000
-- francisco@startup.io Francisco 22 45,000
-- We can find the highest salary using:

-- SELECT MAX(salary) FROM employees;

-- When we use aggregation functions, we cannot directly select other elements from the same table. For example, SELECT email, MAX(salary) FROM employees; would throw an error since we would be selecting email next to the function. But don't worry, as we'll learn how to do it properly when we look at the group by clause later.

-- Exercise:
-- Using the same previous data, select the oldest age from the employees table

-- Tip: Although in SQL it is valid to write both MAX (column) and MAX (column), the exercise corrector will consider the first option as incorrect due to the additional space. Therefore, write the function without spaces.


SELECT MAX(age) FROM employees;

SELECT MIN(sueldo) FROM empleados;