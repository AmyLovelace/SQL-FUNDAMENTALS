-- Introduction to subqueries
-- Subqueries, also known as "subqueries", allow us to use the results of one query within another query.

-- Let's look at a practical example.

-- Given the following table employees

-- FIRST LAST NAME SALARY DEPARTMENT
-- Juan Pérez 3000 Sales
-- María González 3500 Marketing
-- Carlos Rodríguez 4000 Technology
-- Ana Martínez 2800 Human Resources
-- Luis García 3200 Finance
-- Carmen López 3100 Administration
-- José Hernández 2900 Operations
-- Francisco Martín 3400 Legal
-- Laura Sánchez 3300 Shopping
-- Antonio Díaz 3600 Production
-- Sofia Ruiz 2750 Sales
-- Jorge Vargas 3900 Technology
-- Elena Castro 3050 Marketing
-- Pedro Ortega 3150 Finance
-- We are asked to select all the people who earn above average.

-- We can answer these types of questions using subqueries.

-- The idea to answer this is the following.

-- We calculate the average SELECT avg(salary) FROM employees
-- We select all employees whose salary is higher than the previous query. SELECT * FROM employees WHERE salary > (SELECT AVG(salary) FROM employees)
-- Exercise
-- Using the same table data used, select all records whose salary is less than or equal to the average.


SELECT * FROM employees WHERE salary <= (SELECT AVG(salary) FROM employees)

-- Subqueries and where part 1
-- Within subqueries, we can use the same clauses we have learned so far, such as the WHERE clause. This means that we can apply the WHERE clause both inside the subquery and outside of it.

-- Exercise
-- Given the following table employees

-- FIRST LAST NAME SALARY DEPARTMENT
-- Juan Pérez 3000 Sales
-- María González 3500 Marketing
-- Carlos Rodríguez 4000 Technology
-- Ana Martínez 2800 Human Resources
-- Luis García 3200 Finance
-- Carmen López 3100 Administration
-- José Hernández 2900 Operations
-- Francisco Martín 3400 Legal
-- Laura Sánchez 3300 Shopping
-- Antonio Díaz 3600 Production
-- Sofia Ruiz 2750 Sales
-- Jorge Vargas 3900 Technology
-- Elena Castro 3050 Marketing
-- Pedro Ortega 3150 Finance
-- Select all information from records that are greater than the average for the finance department.

-- Tip:

-- The average is requested exclusively from the finance department so there is no need to group the data.
-- For this type of problem there is usually more than one solution.

SELECT * FROM employees WHERE salary > (SELECT AVG(salary) FROM employees WHERE department = 'Finance')


-- Subqueries and where part 2
-- Exercise
-- FIRST LAST NAME SALARY DEPARTMENT
-- Juan Pérez 3000 Sales
-- María González 3500 Marketing
-- Carlos Rodríguez 4000 Technology
-- Ana Martínez 2800 Human Resources
-- Luis García 3200 Finance
-- Carmen López 3100 Administration
-- José Hernández 2900 Operations
-- Francisco Martín 3400 Legal
-- Laura Sánchez 3300 Shopping
-- Antonio Díaz 3600 Production
-- Sofia Ruiz 2750 Sales
-- Jorge Vargas 3900 Technology
-- Elena Castro 3050 Marketing
-- Pedro Ortega 3150 Finance
-- Using the data in the Employees table, select all employees whose salary is greater than the employee with the highest salary in the finance department.

SELECT * FROM employees WHERE salary > (SELECT MAX(salary) FROM employees WHERE department = 'Finance')

-- Subqueries and where part 3
-- Exercise
-- There is the following notes table:

-- EMAIL NOTES
-- Student1@example.com 90
-- Student1@example.com 50
-- Student1@example.com 30
-- Student2@example.com 90
-- Student2@example.com 20
-- Student3@example.com 80
-- Student2@example.com 50
-- Student3@example.com 30
-- Student3@example.com 10
-- Select all records above the grade average.


SELECT * FROM notes WHERE notes > (SELECT AVG(notes) FROM notes)