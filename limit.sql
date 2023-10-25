-- Limiting the number of results
-- The LIMIT clause is used to limit the number of results returned by a query. This is useful when we only need to see a certain number of records instead of all records that meet the query condition.

-- For example, if we want to get only the first 5 records of a table, we can use the LIMIT clause as follows:

-- SELECT * FROM LIMIT table 5

-- This will return only the first 5 records in the table.

-- The LIMIT clause is added to the end of the query, e.g.

-- SELECT * FROM table WHERE field > 10 ORDER BY field2 LIMIT 5

-- Exercise:
-- Select the first 3 users from the users table.


SELECT * FROM users LIMIT 3;