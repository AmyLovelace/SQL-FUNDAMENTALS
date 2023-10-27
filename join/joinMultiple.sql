-- Selecting some attributes
-- If we have two tables like the one in the previous exercises,

-- Users table

-- EMAIL NAME AGE
-- juan.perez@example.com Juan Pérez 30
-- maria.gonzalez@example.com Maria González 25
-- john.doe@example.com John Doe 40
-- test.user@example.com Test User 22
-- contact_data table

-- EMAIL PHONE
-- juan.perez@example.com 555-123-4567
-- maria.gonzalez@example.com 444-987-6543
-- john.doe@example.com 777-555-8888
-- test.user@example.com 111-222-3333
-- juan.perez@example.com 999-888-7777
-- maria.gonzalez@example.com 333-111-0000
-- It may be that when selecting the data we do not want to show the emails twice. For this, instead of using SELECT * we will use

SELECT users.*, contact_data.phone FROM users JOIN contact_data ON users.email = contact_data.email

-- In this way we select everything from the users table and only the telephone numbers from the contact_data table.

-- Exercise
-- Given the following tables:

-- users

-- EMAIL NAME AGE
-- juan.perez@example.com Juan Pérez 30
-- maria.gonzalez@example.com Maria González 25
-- john.doe@example.com John Doe 40
-- test.user@example.com Test User 22
-- grades

-- EMAIL NOTES
-- juan.perez@example.com 90
-- maria.gonzalez@example.com 100
-- john.doe@example.com 80
-- test.user@example.com 0
-- juan.perez@example.com 100
-- maria.gonzalez@example.com 100
-- Select the email, name and age from the users table and only the notes from the notes table. Join the records from both tables using email.


SELECT users.*, notes.notes FROM users JOIN notes ON users.email = notes.email;