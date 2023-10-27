-- Add a record with null values
-- In SQL, you have the flexibility to make inserts that involve only some columns, leaving others without data. This can be useful when you only have information for certain parts of a record.

-- Suppose you have a table called customers with columns like id, name, age and email. If you only have information about a customer's name and email, but don't know their age, you can use the following syntax:

INSERT INTO clients (name, email) VALUES ('Ana', 'ana@example.com');

-- This command will insert a new customer into the customers table with the name "Ana" and the email "ana@example.com", while the age column will have a null value.

-- Remember that the ids are entered autoincrementally, so it is not necessary to specify them when inserting new records.

-- Exercise
-- Given the users table with the columns id, first name, last name, email and phone, create a new user with the values:

-- name: Lucia
-- Last name: Sánchez
-- email: luciasanchez@outlook.com


INSERT INTO users (first name, last name, email) VALUES ('Lucía','Sánchez', 'luciasanchez@outlook.com');