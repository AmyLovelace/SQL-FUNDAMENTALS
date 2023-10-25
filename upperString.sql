-- Transforming a string to uppercase
-- To transform a string to uppercase in SQLITE we can use the UPPER() function.

-- For example, if we have a table of users with the field 'name', we can select all the names by transforming them to uppercase using the following query:

-- SELECT UPPER(name) FROM users;

-- This will return us a list of all the names in the 'users' table, but in uppercase. The UPPER() function does not modify the data in the table, it only transforms it for the query results.

-- When using functions of this type, we will often rename the column using an alias.

-- SELECT UPPER(name) as upper_name FROM users;

-- Exercise
-- There is a table of users with the columns first name, last name, email and telephone number.

-- Select the emails from the users table with the alias email_upper. All emails must be displayed in capital letters.

SELECT UPPER(email) as email_upper FROM users ;