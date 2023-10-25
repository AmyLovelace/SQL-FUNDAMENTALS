-- Selecting characters from a string with SUBSTR
-- The SUBSTR() function is used to select a certain number of characters from a string:

-- SUBSTR(string, start, length)

-- In the syntax we can see that the function has 3 arguments. 1. String: the name of the column or word that will be used 2. Start: an integer that specifies the start position from which characters will be extracted from the string. 3. Length: the number of characters extracted

-- For example, if we have a table of products with the field 'name' and we want to select only the first letter of each name, we can use the following query:

-- SELECT SUBSTR(name, 1, 1) AS first_letter FROM products;

-- In this example we are indicating that in the name column, starting from its first letter, it returns only 1 character that will correspond to the first letter of each name.

-- It is important to remember that some functions have different names depending on the database engine. For example, to achieve this same goal in PostgreSQL, we would use the LEFT() function

-- Exercise:
-- There is a users table with the columns id, first name, last name, email and telephone. Use the SUBSTR function to select the first three letters of each user's last name in the 'users' table. Assign the name 'first_letters' to the created column.


SELECT SUBSTR(last_name,1,3) as first_letters FROM users;