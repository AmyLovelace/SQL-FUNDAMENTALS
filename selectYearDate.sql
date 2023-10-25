-- Extraction of the year
-- For certain reports, we will most likely be asked to extract information from a date, such as the year a transaction was made.

-- Let's analyze the following scenario:

-- You have the sales table with the following information:

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
-- They ask us to show all the information in the table and additionally add a column with the year of sale.

-- SELECT *, strftime('%Y', sales_date) as sales_year FROM sales The result of this query will be the following:

-- SALES_ID AMOUNT SALES_DATE SALES_YEAR
-- 1 200 2010-01-15 2010
-- 2 150 2011-02-20 2011
-- 3 300 2012-03-10 2012
-- 4 250 2013-04-05 2013
-- 5 100 2014-05-25 2014
-- 6 350 2015-06-18 2015
-- 7 400 2015-07-22 2015
-- 8 180 2015-08-09 2015
-- 9 220 2018-09-30 2018
-- 10 275 2019-10-11 2019
-- To display the results of this type of function, you need to give the new column a name, otherwise the resulting column will keep the name "strftime('%Y', sales_date)", which would result in a poorly readable name for a report.

-- Exercise:
-- Given a sales table with the columns amount and sales_date, create a query that shows only the amount and year of the sale. The column that shows the year of the sale should be called sales_year

SELECT amount, strftime('%Y', sales_date) as sales_year FROM sales;

-- Month and year extraction
-- We already learned how to extract the month and year from a date. However, how could we extract both data into a single column?

-- To extract both the month and year of a date into a single column, you can use the strftime('%Y-%m') function. This will allow you to get a result in the "year-month" format. Let's look at an example using a sales table:

-- Exercise
-- Given the sales table with the columns amount and sales_date, create a query that displays the following two columns:

-- Amount
-- The month and year of the sale date. This column should be called year-month
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

SELECT amount, strftime('%Y-%m',sales_date) as 'year-month' FROM sales;

-- Extractions and where
-- Previously we learned to filter using a date as a parameter. Now we will use what we have learned to filter dates of a specific year or month.

-- You have the sales table with the following information:

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
-- They ask us to show all the sales for the year 2012. For this we will use the strftime function to extract the year from the dates, and then we will filter by the indicated year:

-- SELECT * FROM sales WHERE strftime('%Y', sales_date) = '2012';

-- Exercise:
-- Given a sales table with the columns amount and sales_date, select all the sales information for 2015


SELECT * FROM sales WHERE strftime('%Y', sales_date) = '2015' ;