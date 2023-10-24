-- Assigning an alias with AS and double quotes
-- In SQL, we can use the AS clause along with double quotes to change the name of a column in the results of a query. This is useful when we want to give a more descriptive name or when the column name contains spaces or accents.

-- For example, consider a table called 'employees' with columns 'full_name' and 'salary'. If we want to change the name of the 'salary' column to 'Employee Salary', we can use the following query:

-- SELECT full_name, salary AS "Employee Salary" FROM employees;


-- Exercise:
-- Select the name and email of the users from the users table, and assign the name 'Email' to the 'email' column.


-- CORRECT ANSWER
SELECT name, email AS 'Email' FROM users ;