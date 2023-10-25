-- Asc and desc order combinations
-- Suppose we want to obtain a list of all products whose price is greater than $100 and sort them first by price in descending order and then by name in ascending order. We can do this using the following query:

-- SELECT * FROM products WHERE price > 100 ORDER BY price DESC, name ASC;

-- Exercise:
-- You have the products table with the following information:

-- ID NAME STOCK COLOR
-- 1 Chair 10 Red
-- 2 Table 5 Green
-- 3 Lamp 15 Blue
-- 4 Desk 8 White
-- 5 Shelf 12 Black
-- Select all the records from the 'products' table and sort them first by 'stock' in descending order and then by 'color' in ascending order.

--CORRECT ANSWER:
SELECT * FROM products ORDER BY stock DESC, color ASC;