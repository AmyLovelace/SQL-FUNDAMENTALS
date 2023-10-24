-- Sorting with nulls at the end
-- Sometimes we need null values ​​to be at the beginning or end of the list regardless of which direction we sort. To achieve this we will use ORDER BY along with NULLS FIRST or NULLS LAST to specify how we want the rows with null values ​​to be ordered.

-- With NULLS FIRST the first nulls are shown and with NULLS LAST they are shown at the end

-- The complete query would have the following form: SELECT * FROM table ORDER BY field NULLS FIRST

-- Exercise:
-- Given a products table with the columns 'id', 'name' and 'price' with the following records.

-- ID NAME PRICE
-- 1 Product 1 100
-- 2 Product 2 NULL
-- 3 Product 3 50
-- 4 Product 4 NULL
-- 5 Product 5 200
-- Sorts the table rows based on price in ascending order. Make sure that rows with null values ​​in the 'price' column appear at the end of the sorted list.

SELECT * FROM products ORDER BY price NULLS LAST;