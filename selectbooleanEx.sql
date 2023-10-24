-- Using two conditions with "and" operator part 2
-- Exercise
-- There is a table called products that has the fields id, name, out of stock and price. The price column is of type Integer while the out of stock column is of type Boolean.

-- Select the products in the table that are out of stock and have a price greater than 100.

--CORRECT ANSWER:

SELECT * FROM products WHERE out of stock = true and price > 100;