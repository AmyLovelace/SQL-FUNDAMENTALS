-- Grouping values ​​with GROUP BY
-- The GROUP BY clause is a powerful tool in SQL that is used to group rows with identical values ​​in one or more specific columns, allowing aggregation operations to be performed on each group.

-- In this first exercise we will learn how to use GROUP BY to obtain all the distinct elements of a table, the same thing we previously did with distinct.

-- We have the following color table:

-- COLOR
-- Red
-- Blue
-- Green
-- Yellow
-- Orange
-- Purple
-- Pink
-- Coffee
-- Grey
-- Black
-- White
-- Red
-- Blue
-- Green
-- Yellow
-- We can select the unique elements using GROUP BY as follows:

SELECT color as unique_color FROM colors GROUP BY color

-- Create a query that shows us each email only once. The column shown must be called single_mail

-- 1
SELECT email as single_mail FROM users GROUP BY email;