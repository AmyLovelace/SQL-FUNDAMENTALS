-- Selecting a date
-- Another type of data is date, Date in English. By default, dates are saved in a YYYY-MM-DD format, first indicating the year in 4 digits, then the month with two digits and finally the day with two digits. An example of a date in this format would be 2022-01-01

-- We can do different types of operations on dates, but first we will learn how to use them to filter. For example, we can get all products from a table whose date is greater than or equal to January 1, 2022:

-- SELECT * FROM products WHERE creation_date >= '2022-01-01';

-- Exercise:
-- There is a table of products with the fields id, name, price and creation_date. The creation_date field is of type Date.

-- Select all products from the products table that were created after '2021-05-01'.

--CORRECT ANSWER:

SELECT * FROM products WHERE creation_date >= '2021-05-01';