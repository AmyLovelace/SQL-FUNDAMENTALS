-- Aggregation functions and dates
-- When building reports, we will frequently need to deliver information grouped over a period of time. To achieve this we will use a combination of GROUP BY with the strftime function.

-- We have the "sales" table with the following information:

-- SALES_ID AMOUNT SALES_DATE
-- 1 200 2010-01-15
-- 2 150 2011-02-20
-- 3 300 2012-03-10
-- 4 250 2012-04-05
-- 5 100 2014-05-25
-- 6 350 2015-06-18
-- 7 400 2015-07-22
-- 8 180 2015-08-09
-- 9 220 2018-09-30
-- 10 275 2018-10-11
-- We are asked to determine the total amount of sales per year. To solve it we have to group by date and add the amounts as follows:

SELECT SUM(amount), strftime("%Y", sales_date) AS year FROM sales GROUP BY strftime("%Y", sales_date)

-- Exercise
-- Using this new sales table.

-- SALES_ID AMOUNT SALES_DATE
-- 1 200 2010-01-15
-- 2 150 2010-02-20
-- 3 300 2010-02-10
-- 4 250 2010-04-05
-- 5 100 2010-04-25
-- 6 350 2010-04-18
-- 7 400 2010-06-22
-- 8 180 2010-06-09
-- 9 220 2010-09-30
-- 10 275 2010-10-11
-- Calculate total sales per month. The name of the resulting columns will be "sum_sales" and "month" respectively.

-- Hint: use the strftime function with %m.


SELECT SUM(amount) AS sales_sum, strftime('%m',sale_date) as month FROM sales GROUP BY strftime('%m',fecha_venta);

-- Exercising aggregation functions with dates
-- Exercise
-- There is a table called registrations with different dates of registrations of a user to a website.

-- REGISTRATION DATE
-- 2022-01-15
-- 2022-01-20
-- 2022-02-10
-- 2022-02-05
-- 2022-03-25
-- 2022-03-18
-- 2022-04-22
-- 2022-04-09
-- 2022-05-30
-- 2022-05-11
-- 2022-06-19
-- 2022-06-29
-- 2022-07-12
-- 2022-07-21
-- 2022-08-08
-- 2022-08-17
-- 2022-09-13
-- 2022-09-26
-- 2022-10-14
-- 2022-10-28
-- Count how many users registered each month. The resulting columns should be named "month" and "number_users".

-- Tip: Use the strftime function with %m.


SELECT strftime('%m',registration_date) AS month ,COUNT(registration_date) as user_quantity FROM registrations GROUP BY strftime('%m', registration_date);