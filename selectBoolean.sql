-- SELECTING ROWS UNDER A CONDITION OF EQUALITY (BOOLEAN DATA TYPE)
-- Until now, we have worked with two types of data: integer numbers, such as the price of a product, and strings, such as 'T-Shirt'. In this exercise, we will introduce the Boolean data type, which can store a true or false value, TRUE or FALSE.

-- Suppose we have a products table with a 'featured' column of Boolean type that indicates whether a product is featured or not. To select all products marked as featured, we can use the following query:

-- SELECT * FROM products WHERE featured = true;
-- Additionally, we can use the values 1 and 0 instead of the reserved words true or false, for example, the following query is identical to the previous one.

-- SELECT * FROM products WHERE featured = 1;
-- Exercise: Select all users from the users table where the status is active.

--CORRECT ANSWER

SELECT * FROM users WHERE status = true;

-- Exercise: Select all products from the products table that are not featured.

--CORRECT ANSWER

SELECT * FROM productos WHERE destacado = false;