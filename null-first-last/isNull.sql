-- Selecting records with null values
-- Just as we can select non-null values, we can also select null values.

-- For example, if we want to find all users who do not have a phone number registered in the users table, we can use the following query:

-- SELECT * FROM users WHERE phone IS NULL;

-- Exercise:
-- There is a user table with id, first name, last name, email and phone number

-- Select all users who do not have an email registered in the user table.

SELECT * FROM users WHERE email IS NULL;
