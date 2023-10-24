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
SELECT * FROM users ORDER BY name;