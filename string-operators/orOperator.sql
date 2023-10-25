-- Using "OR" operator
-- The OR operator is used to combine multiple conditions in a WHERE clause in SQL. When the OR operator is used, at least one of the conditions must be true for the record to be included in the result.

-- For example, if we want to select all products that are 'Blue' or 'Green', we can use the following query:

-- SELECT * FROM products WHERE color = 'Blue' OR color = 'Green';

-- This will select all records from the 'products' table that have either the 'Blue' color or the 'Green' color.

-- Exercise
-- There is a products table with the fields id, name, price and discount. The price field and the discount field are of type integer.

-- Select all products whose price is greater than 1000 or whose discount is equal to 20.


SELECT * FROM products WHERE price > 1000 OR discount = 20;