-- Selecting rows with "like"
-- Suppose we want to find all the users whose name starts with the letter 'J' in the users table. We can do this using the following query:

-- SELECT * FROM users WHERE name LIKE 'J%'

-- In this query, we are using the LIKE operator to find all usernames that start with the letter 'J'.

-- The '%' symbol is a wildcard that represents any number of additional characters. In this case, we are using '%' after the letter 'J' to indicate that we want to search for any name that starts with 'J' and has any number of additional characters after it.

-- Exercise:
-- There is a user table with the fields id, name, last name, email and telephone. The name field is of type text.

-- You are asked to select all users whose last name begins with 'Ma'

--CORRECT ANSWER:

SELECT * FROM users WHERE last_name LIKE 'Ma%';

-- Exercise:

-- Select all users from the users table whose name ends with the letter 'o'

--CORRECT ANSWER:

SELECT * FROM users WHERE name LIKE '%o';