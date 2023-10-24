-- Selecting records without null values
-- Some records may have null values ​​for some of their fields. For example, we could have a table of users with names and emails but not have all the names of each of the records
--To select all non-null values ​​we will use IS NOT NULL
--For example, in the users table previously shown we can select all non-null names using SELECT * FROM employees WHERE name IS NOT NULL;

-- Exercise:
-- There is a table of products with id, name, price and discount, with a discount of integer type.
-- Select all records from the products table whose discount field is not null.


SELECT * FROM products WHERE discount IS NOT NULL ;
