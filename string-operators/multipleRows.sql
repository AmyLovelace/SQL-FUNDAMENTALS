-- SELECTING MULTIPLE ROWS UNDER A CONDITION
-- In some situations, we will select certain columns and at the same time apply conditions.

-- For example, if we have a 'products' table with columns 'id', 'name', 'price' and 'quantity', we can select the id and name of all products whose price is greater than 30 using the following query:

-- SELECT id, name FROM products WHERE price > 30;
-- As we can see, this exercise is solved with the same rules we have seen so far, applying the clauses in the following order:

-- SELECT, FROM WHERE

-- Exercise: Select the name, price and quantity from the products table where the quantity is greater than 6.

--CORRECT ANSWER: 

SELECT nombre,precio, cantidad FROM productos WHERE cantidad >6;