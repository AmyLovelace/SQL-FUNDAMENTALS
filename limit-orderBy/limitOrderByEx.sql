-- Get the name of the concert with the most tickets sold
-- There is a database with the concerts table in which information about each concert is stored, including the name of the concert and the number of tickets sold. The data within the database corresponds to the following table.

-- CONCERT_NAME TICKETS_SOLD
-- Concert at 150
-- Concert B 200
-- Concert C 180
-- Concert D 250
-- Find the name of the concert that has sold the most tickets (use ORDER BY and LIMIT).


SELECT gig_name, sold_tickets FROM concerts ORDER BY gig_name DESC LIMIT 1;