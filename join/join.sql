-- Multiple tables
-- When working with relational databases, the need to combine data from multiple tables frequently arises.

-- Let's look at an example:

-- Users table

-- EMAIL1 NAME AGE
-- juan.perez@example.com Juan Pérez 30
-- maria.gonzalez@example.com Maria González 25
-- john.doe@example.com John Doe 40
-- test.user@example.com Test User 22
-- contact_data table

-- EMAIL2 PHONE
-- juan.perez@example.com 555-123-4567
-- maria.gonzalez@example.com 444-987-6543
-- john.doe@example.com 777-555-8888
-- test.user@example.com 111-222-3333
-- juan.perez@example.com 999-888-7777
-- maria.gonzalez@example.com 333-111-0000
-- If they asked us to obtain all the emails, name, age and telephone number of all the users, we would have to join these tables. For this there is the JOIN clause.

-- In our example, we can join the tables with the following query: SELECT * FROM users JOIN contact_data ON email1 = email2

-- To join tables we have to establish a join point. In this case, what both tables have in common is the email.

-- Exercise
-- Using what you have learned, select all the users along with their notes. Observe the results before moving forward.

-- users table

-- EMAIL1 NAME AGE
-- juan.perez@example.com Juan Pérez 30
-- maria.gonzalez@example.com Maria González 25
-- john.doe@example.com John Doe 40
-- test.user@example.com Test User 22
-- table notes

-- EMAIL2 NOTES
-- juan.perez@example.com 90
-- maria.gonzalez@example.com 100
-- john.doe@example.com 80
-- test.user@example.com 0
-- juan.perez@example.com 100
-- maria.gonzalez@example.com 100


SELECT * FROM users JOIN notes ON email1 = email2