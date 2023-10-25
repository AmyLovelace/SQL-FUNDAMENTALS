-- Sorting rows
-- In this exercise, we will learn how to order the rows of a table in SQL, and for this, we will study a new clause called ORDER BY.

-- ORDER BY is used to order the results of a query according to one or more columns. By default, it is sorted in ascending order.

-- For example, if we have a table of products with the fields 'id', 'name' and 'price', we can sort the products by price from lowest to highest with:

-- SELECT * FROM products ORDER BY price;

-- It is important to keep in mind that the clauses have to be specified in exactly this order:

-- SELECT
-- DESDE
-- ORDER BY
-- The order of the results will depend on the type of data: numbers are ordered from smallest to largest, texts alphabetically, and dates chronologically.

-- Exercise:
-- Sorts the records in the users table by the 'name' field

--CORRECT ANSWER
--ascendente
SELECT * FROM users ORDER BY name;

--desendente
SELECT precio FROM productos ORDER BY precio DESC;

-- Order combinations
-- In some situations we will want to sort based on multiple columns. For example, if we want to obtain a list of all the products ordered by their stock and then by their color, we can select all the fields in the table and sort them first by the stock field and then by the color field as follows:

-- SELECT * FROM products ORDER BY stock ASC, color ASC

-- Exercise:
-- You have the employees table with the following information:

-- ID NAME SALARY
-- 1 Juan Pérez 4800
-- 2 María López 5500
-- 3 Pedro García 5500
-- 4 Ana Martínez 5500
-- 5 Luis Rodríguez 4800
-- Select a list of all employees sorted by salary and name.


SELECT * FROM employees ORDER BY ASC salary, ASC name;