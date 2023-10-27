-- Order of clauses
-- When we want to use joins with the other clauses that we have learned, we have to consider their order.

-- The following table shows the order that we must follow:

-- COMMAND IS READ AS:
-- SELECT Select this data.
-- FROM From this table.
-- JOIN Join them with this table.
-- WHERE Filters the values ​​that meet this condition.
-- GROUP BY Groups the results by this criterion.
-- HAVING Filters by these grouped criteria.
-- ORDER BY Orders the results by this other criterion.
-- LIMIT Limits results to this amount.
-- Exercise
-- Given the following tables, select all the information for the user juan.perez@example.com

-- Users table

-- EMAIL NAME AGE
-- juan.perez@example.com Juan Pérez 30
-- maria.gonzalez@example.com Maria González 25
-- john.doe@example.com John Doe 40
-- test.user@example.com Test User 22
-- Notes table

-- EMAIL NOTES
-- juan.perez@example.com 90
-- maria.gonzalez@example.com 100
-- john.doe@example.com 80
-- test.user@example.com 0
-- juan.perez@example.com 100
-- maria.gonzalez@example.com 100
-- Hint: you must select everything, join the tables and filter by the respective email.

SELECT users.*,notes.* FROM users JOIN notes ON users.email = notes.email WHERE users.Email = 'juan.perez@example.com' ; 