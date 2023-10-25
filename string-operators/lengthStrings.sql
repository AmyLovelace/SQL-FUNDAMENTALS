-- Getting the length of a string
-- In SQL, we can use the LENGTH() function to get the length of a character string. For example, if we want to get the name length of all users in the 'users' table, we could use the following query:

-- SELECT name, LENGTH(name) FROM users;

-- This will return us a list of names along with their respective length.

-- Exercise:
-- Selects the length of the last name of all users in the users table.


SELECT LENGTH(lastname) FROM users;