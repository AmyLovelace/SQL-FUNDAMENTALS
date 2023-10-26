-- Select by filtering repeated data
-- In SQL the DISTINCT keyword allows us to filter the repeated results of a query.

-- Suppose we have the following table called colors

-- COLOR
-- Red
-- Blue
-- Green
-- Yellow
-- Red
-- Green
-- Red
-- Green
-- Red
-- Black
-- White
-- Red
-- Blue
-- Green
-- Yellow
-- They ask us to create a query that shows us each color only once. For this we will use the following query

-- SELECT DISTINCT color AS unique_color
-- FROM colors
-- Exercise:
-- Try the same learned instruction in the editor to see what the result of the query would be.


SELECT DISTINCT color AS unique_color FROM colors;

-- Selecting unique emails
-- Exercise
-- Given the following table of users

-- MAIL
-- juan.perez@empresa.com
-- maria.gonzalez@empresa.com
-- carlos.rodriguez@empresa.com
-- ana.martinez@empresa.com
-- luis.garcia@empresa.com
-- carmen.lopez@empresa.com
-- jose.hernandez@empresa.com
-- francisco.martin@empresa.com
-- laura.sanchez@empresa.com
-- antonio.diaz@empresa.com
-- juan.perez@empresa.com
-- maria.gonzalez@empresa.com
-- Create a query that shows us each email only once. The column shown must be called single_mail


SELECT DISTINCT email as single_mail FROM users;

-- Select different years
-- You have the sales table with the following information:

-- SALES_ID AMOUNT SALES_DATE
-- 1 200 2010-01-15
-- 2 150 2011-02-20
-- 3 300 2012-04-10
-- 4 250 2013-04-05
-- 5 100 2014-04-25
-- 6 350 2015-06-18
-- 7 400 2015-06-22
-- 8 180 2015-06-09
-- 9 220 2018-07-30
-- 10 275 2019-07-11
-- We have been asked to create a query that shows the years in which transactions have occurred, excluding repeats.

-- As we already learned in previous exercises, to obtain the year from the sale date, we can use the following code:

-- SELECT strftime('%Y', sales_date) as sales_year FROM sales

-- However, to ensure we get unique years, we can add the DISTINCT clause to our query as follows:

-- SELECT DISTINCT strftime('%Y', sales_date) as unique_year FROM sales

-- Exercise
-- Using the same sales table previously used, select all the different months, assigning the alias "single_month" to the column.


SELECT DISTINCT strftime('%m', sales_date) as unique_month FROM sales