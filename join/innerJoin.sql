-- Inner Join
-- In SQL there are several ways to join tables. When the type of join is not specified, INNER JOIN is used, that is,

SELECT * FROM users JOIN contact_data ON users.email = contact_data.email

-- is the same as

SELECT * FROM users INNER JOIN contact_data ON users.email = contact_data.email

-- In an Inner Join operation, the records from both tables are combined as long as the common key is in both tables. If the key is not in one of the tables, that record will not appear in the final result.

-- Exercise
-- Join the tables using JOIN (or INNER JOIN) to get all the records from both tables. Look at the tables before doing the exercise and pay special attention to Francisco who does not have any notes in the system.

-- Users table

-- EMAIL NAME AGE
-- juan.perez@example.com Juan Pérez 30
-- maria.gonzalez@example.com Maria González 25
-- john.doe@example.com John Doe 40
-- francisco@example.com Test User 22
-- Notes table

-- EMAIL NOTES
-- juan.perez@example.com 90
-- maria.gonzalez@example.com 100
-- john.doe@example.com 80
-- juan.perez@example.com 100
-- maria.gonzalez@example.com 100


SELECT * FROM users INNER JOIN notes ON users.email = notes.email;