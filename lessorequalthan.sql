-- USING THE LESS THAN OR EQUAL TO OPERATOR
-- The less than or equal to operator (<=) can be used in a condition to select records where the value of a column is less than or equal to a given value. For example, if we have a products table with a 'price' column, we can select all products whose price is less than or equal to x using the following query:

-- SELECT * FROM products WHERE price <= x;
-- Exercise: Select all records from the products table where the value of the 'price' column is less than or equal to 100.

--CORRECT ANSWER:

SELECT * FROM productos WHERE precio <= 100;