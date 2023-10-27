-- Grouping values ​​with GROUP BY
-- The GROUP BY clause is a powerful tool in SQL that is used to group rows with identical values ​​in one or more specific columns, allowing aggregation operations to be performed on each group.

-- In this first exercise we will learn how to use GROUP BY to obtain all the distinct elements of a table, the same thing we previously did with distinct.

-- We have the following color table:

-- COLOR
-- Red
-- Blue
-- Green
-- Yellow
-- Orange
-- Purple
-- Pink
-- Coffee
-- Grey
-- Black
-- White
-- Red
-- Blue
-- Green
-- Yellow
-- We can select the unique elements using GROUP BY as follows:

SELECT color as unique_color FROM colors GROUP BY color

-- Create a query that shows us each email only once. The column shown must be called single_mail

-- 1
SELECT email as single_mail FROM users GROUP BY email;

-- Group and count
-- GROUP BY is commonly used in conjunction with aggregation functions such as COUNT, MAX, MIN, SUM, and AVG to obtain summary information about a data set.

-- In this exercise we will learn to group and count.

-- Create a query that shows us each email only once along with the number of repetitions. The columns should be called mail and repeats.


SELECT mail, COUNT(mail) as repetitions FROM users GROUP BY mail;

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
-- You are asked to count how many people work in each department. The resulting columns should be named department and number_employees

1
SELECT department, COUNT( department) as number_employees FROM employees GROUP BY department;
