-- Selecting data between two values ​​with "between"
-- The BETWEEN operator is used to select records whose values ​​fall within a specific range.

-- For example, we can select all products whose stock is between 10 and 50 using the following query:

-- SELECT * FROM THE PRODUCTS WHERE THERE IS STOCK BETWEEN 10 AND 50;

-- An important detail to mention is that the between operator is inclusive. That is, in the example the values ​​of 10 or 50 would be included.

-- If you want to search with another type of interval, for example that includes the value 10 and not the value 50, you can use two conditions joined with an operator and SELECT * products WHERE stock >= 10 and stock < 50

-- Exercise:
-- You have the products table with the id, name and stock fields. Within the records there are 5 products with different stocks as shown below:


-- Select all products whose stock is between 20 and 30.

--CORRECT ANSWER

SELECT  * FROM productos WHERE stock BETWEEN 20 AND 30 ;
