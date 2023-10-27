-- Minimum per group
-- In this exercise we will combine the MIN() function with GROUP BY in order to obtain the lowest amount of each group. The syntax of the query will be the same as those previously seen, that is:

-- SELECT group, MIN(column) FROM table GROUP by group

-- Exercise
-- Given the following sales table:

-- PRODUCT AMOUNT CATEGORY
-- Laptop Pro 1200 Electronics
-- Smartphone X 800 Electronics
-- Ergo 150 Chair Furniture
-- Coffee Table 90 Furniture
-- Elegant Watch 250 Accessories
-- Travel Bag 70 Accessories
-- Run 100 Shoes Clothing
-- Casual Shirt 40 Clothing
-- Blender Max 60 Appliances
-- Compact Oven 110 Appliances
-- Cookbook 20 Books
-- Mystery Novel 15 Books
-- Plus 50 Electronic Hearing Aids
-- Modern Lamp 45 Furniture
-- Laptop Pro 1200 Electronics
-- Ergo 150 Chair Furniture
-- Travel Bag 70 Accessories
-- Run 100 Shoes Clothing
-- Create a query to calculate the lowest amount for each category. The resulting table should have two columns: category and lowest_amount.


SELECT category, MIN(amount) AS lowest_amount FROM sales GROUP BY category;