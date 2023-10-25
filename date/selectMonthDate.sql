-- Extraction of the month
-- We can extract the month from a date in a similar way to extracting the year, again using the strftime function.

-- Continuing with our example of the sales table, if we want to add a column that indicates only the month of the sale, we can use the following query:

-- SALES_ID AMOUNT SALES_DATE
-- 1 200 2010-01-15
-- 2 150 2011-02-20
-- 3 300 2012-03-10
-- 4 250 2013-04-05
-- 5 100 2014-05-25
-- 6 350 2015-06-18
-- 7 400 2015-07-22
-- 8 180 2015-08-09
-- 9 220 2018-09-30
-- 10 275 2019-10-11
-- SELECT strftime('%m', column) FROM table

-- In this case, to get the month, we pass %m as an argument to the strftime function.

-- Exercise:
-- Given the sales table previously presented with the columns amount and sales_date, create a query that displays a table with the amount, the month of the sale and the year of the sale, in that same order. The column for the month of the sale should be called month_sale and that for the year of the sale should be called year_sale


SELECT amount, strftime('%m', sales_date) as sales_month , strftime('%Y', sales_date) as sales_year FROM sales;