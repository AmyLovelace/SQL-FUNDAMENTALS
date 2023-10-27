-- Join without results
-- What would happen if the emails present in one table are not found in the other table when the data is joined?

-- users table

-- EMAIL NAME AGE
-- juan.perez@example.com Juan Pérez 30
-- maria.gonzalez@example.com Maria González 25
-- john.doe@example.com John Doe 40
-- test.user@example.com Test User 22
-- contact_data table

-- EMAIL PHONE
-- alvaro.sanchez@example.com 555-123-4567
-- maria.fernandez@example.com 444-987-6543
-- francisca.medina@example.com 777-555-8888
-- The answer is very simple: if there is no common data between both tables, we will not obtain results.

-- Using what you learned previously, select all the records from the union of the users and contact_data tables. Observe the result.

SELECT users.*, contact_data.Email FROM users JOIN contact_data ON users.Email = contact_data.Email