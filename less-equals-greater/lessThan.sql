-- USING THE LESS THAN OPERATOR
-- The less than operator (<) is used to compare values and select rows where the value of a column is strictly less than a specific value. This operator is useful when we want to filter records and obtain those that have a value less than a certain limit.

-- For example, if we have a products table with columns col1, col2, and col3, we can use the following query to select all columns where the value of col1 is less than 10:

-- SELECT * FROM products WHERE col1 < 10;

-- Exercise: You have a users table with columns id, name, lastname, email, and phone. Select all records from the users table where the value of the 'id' column is less than 3.

--CORRECT ANSWER:

SELECT * FROM usuarios WHERE id < 3;