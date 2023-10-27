-- Having and average
-- Exercise
-- There is the following notes table:

-- EMAIL NOTES
-- Student1@example.com 90
-- Student1@example.com 50
-- Student1@example.com 30
-- Student2@example.com 90
-- Student2@example.com 20
-- Student3@example.com 80
-- Student2@example.com 50
-- Student3@example.com 30
-- Student3@example.com 10
-- Create a query to determine which students passed. The approval criterion is grade average >= 50.

-- The columns to display must be email and average_notes.


SELECT email , AVG(grades) as average_notes FROM notes GROUP BY 1 HAVING average_notes >= 50;