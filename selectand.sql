-- USING TWO CONDITIONS WITH THE "AND" OPERATOR
-- The WHERE clause can be combined with the AND operator to join multiple conditions in an SQL query. For example, if we want to select all users whose name is 'Juan' and surname is 'Pérez', we can use the following query:

-- SELECT * FROM users WHERE name = 'Juan' AND surname = 'Pérez';
-- When using the AND operator, both conditions must be met, in this case, the name must be 'Juan' and the surname must be 'Pérez'. If either of them is different, it will not be displayed.

-- Exercise: You have a users table with fields id, name, surname, email, and phone.

-- Select all users from the users table whose name is 'Maria' and email is 'mariagarcia@hotmail.com'.

--CORRECT ANSWER:

SELECT * FROM usuarios WHERE nombre = 'María' and email = 'mariagarcia@hotmail.com';