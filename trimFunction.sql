-- Removing whitespace from a string
-- In SQLite the TRIM() function is used to remove leading and trailing whitespace from a string.

-- For example, if we have a products table with a column 'name' that contains blanks at the beginning and end of each name, we can use the following query to remove those spaces:

-- SELECT TRIM(name) FROM products;

-- This will return the names of the products without the blank spaces at the beginning and end.

-- Exercise:
-- There is a table of users with the columns first name, last name, email and telephone number. Names and emails have blank spaces at both the beginning and end of their value. Use the TRIM() function to select the names and emails and remove the blanks.


SELECT TRIM(name), TRIM(email) FROM users;