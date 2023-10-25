-- Getting the longest name in the table
-- We already saw in the previous exercise that, to calculate the length of a string of characters, we must use the LENGTH() function. If we want to get the shortest string in the column, we must combine the LENGTH() function with ORDER BY and LIMIT.

-- For example, if we want to select the length of the shortest name in the users table, the query would look like this:

-- SELECT LENGTH(name) as length_name FROM users ORDER BY LENGTH(name) LIMIT 1 ;

-- On the other hand, if we want to obtain the length of the longest name, we will reverse the order of the selection.

-- SELECT LENGTH(name) as length_name FROM users ORDER BY LENGTH(name) DESC LIMIT 1 ;

-- This will return the length of the longest name in the 'users' table.

-- Exercises
-- There is a user table with the columns first name, last name, email and telephone number.

-- Use what you have learned to select the length of the 3 longest emails in the table. The resulting column should show only the length (number of characters) of these emails.


SELECT LENGTH(email) FROM users ORDER BY LENGTH(email) DESC LIMIT 3;