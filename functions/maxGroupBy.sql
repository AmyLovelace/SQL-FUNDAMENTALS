-- Maximum per group
-- In this exercise we will combine the MAX() aggregation function with group by in order to obtain the highest amount of each group. The syntax of the query will be the same as those previously seen, that is:

-- SELECT group, MAX(column) FROM table GROUP by group

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
-- Create a query to calculate the highest amount for each category. The resulting table must have two columns: category and highest_amount.


SELECT category, MAX(amount) as highest_amount FROM sales GROUP BY category ;