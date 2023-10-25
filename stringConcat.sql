-- Concatenate strings
-- In this exercise we will learn to put texts together. For example, if we have a column with a first name and another with a last name, we can generate a single column with the first and last name. This is called concatenating and we will use the operator ||

-- An example of a query with concatenation would be the following:

-- SELECT name || ' ' || last_name AS full_name FROM employees;

-- In this query, we are concatenating the first and last name of each employee, separated by a space, and using the alias 'full_name' for the new column created.

-- Exercise:
-- Suppose you have a table called products with the fields 'product', 'brand' and 'price'. Select a list of all products with their name, followed by a hyphen ("-"), and their brand. Assigns the alias 'product_brand' to the created column.


SELECT product || '-' || brand as product_brand FROM products;