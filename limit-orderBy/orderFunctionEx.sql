-- Sorting all the data and the function
-- In the previous exercise, we had chosen to select only the length (length) of a column. However, in certain cases, it may be necessary to retrieve both the column information itself and its length. For example, what would happen if we were asked for the longest email instead of simply its length?

-- For this we can make a query like the following:

-- SELECT email FROM users ORDER BY LENGTH(email) DESC LIMIT 1;

-- Additionally, we may be asked to select all fields for the user whose email is the longest. To achieve this, we can use the following query:

-- SELECT * FROM users ORDER BY LENGTH(email) DESC LIMIT 1;

-- This query will return all rows from the "users" table where the length of the email is equal to the maximum length found in the entire table.

-- Likewise, they could require us to select all the fields in the table and also include the length of the email. The idea is similar, we simply add the function to the SELECT:

-- SELECT *, LENGTH(email) as email_length FROM users ORDER BY LENGTH(email) DESC LIMIT 1;

-- The important thing is to understand what they are asking us to be able to make the correct queries.

-- Exercises:
-- There is a user table with the columns first name, last name, email and telephone number.

-- Use what you have learned to select the 3 longest emails in the table. The result should show two columns: one with the emails and another with their respective lengths.


SELECT email, LENGTH(email) FROM users ORDER BY LENGTH(email) DESC LIMIT 3;