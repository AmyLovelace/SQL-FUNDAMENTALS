-- SELECTING ROWS UNDER A CONDITION OF EQUALITY (STRING DATA TYPE)
-- In SQL, to compare texts we must use single quotes ('') or double quotes (""). For example, if we have a products table with a product named 'T-Shirt', we can select it using:

-- SELECT * FROM products WHERE name = 'T-Shirt';
-- When comparing a string in a WHERE condition, we must ensure to enclose the sought value between quotes.

-- Why do we need to wrap texts in quotes?

-- When we wrap a text between quotes in SQL, we are indicating that it is not a keyword, nor a table name or column name, but a value that must be taken literally.

-- Exercise: Select all rows from the products table where the product name is 'Trousers'.

--CORRECT ANSWER

SELECT * FROM products WHERE name = 'Trousers';

--QUERYS ARE CASE SENSITIVE

SELECT * FROM products WHERE name = 'Silla de Oficina';