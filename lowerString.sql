-- Transforming a string to lowercase
-- The LOWER() function in SQLite is used to convert all characters in a text to lowercase. For example, if we have a table 'users' with a field 'name' that contains names in uppercase, we can convert all names to lowercase using the following query:

-- SELECT LOWER(name) AS lowercase_name FROM products;

-- This will return us a list of all the names in the 'users' table, but in lower case. The LOWER() function does not modify the data in the table, it only transforms it for the query results.

-- Exercise:
-- There is a table of users with the fields id, name, and email. The email field is of type text and contains some capital letters, which can cause errors in the database.

-- Select the emails from the users table with the alias email_lower. All emails must be displayed in lowercase letters.


SELECT LOWER(email) AS email_lower FROM users;