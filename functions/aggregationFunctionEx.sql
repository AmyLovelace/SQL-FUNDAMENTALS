-- Exercise 1: Aggregation functions with where
-- Aggregation functions can be combined with the clauses previously studied. We simply have to respect the established order of the clauses.

-- When extracting data from a database, it will be very common for us to use aggregation functions in conjunction with where.

-- SELECT AVG(column1) FROM table WHERE column2 < value

-- Exercise
-- Using the employees table, calculate the sum of salaries for all people over 27 years of age.

-- EMAIL NAME AGE SALARY
-- juan.perez@workmail.com Juan Pérez 30 50,000
-- maria.gonzalez@corp.com Maria González 25 55,000
-- john.doe@techplace.org John Doe 40 60,000
-- francisco@startup.io Francisco 22 45,000


SELECT SUM(salary) FROM employees WHERE age > 27;

-- Exercise 2: Aggregation functions with where
-- Exercise
-- Using the employees table, calculate the average salaries of all people who earn more than 50,000

-- EMAIL NAME AGE SALARY
-- juan.perez@workmail.com Juan Pérez 30 50,000
-- maria.gonzalez@corp.com Maria González 25 55,000
-- john.doe@techplace.org John Doe 40 60,000
-- francisco@startup.io Francisco 22 45,000
-- Tip: They have to earn strictly more than 50,000.


SELECT AVG(salary) FROM employees WHERE salary > 50000 ORDER BY salary DESC;

SELECT COUNT(*) FROM empleados WHERE Departamento = 'Marketing';

SELECT COUNT(*) FROM empleados WHERE Departamento = 'Finanzas' OR Departamento = 'Marketing' ;

SELECT COUNT(*) FROM usuarios WHERE nombre LIKE '%a'
