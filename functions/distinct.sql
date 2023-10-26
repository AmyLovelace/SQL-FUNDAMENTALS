-- Select by filtering repeated data
-- In SQL the DISTINCT keyword allows us to filter the repeated results of a query.

-- Suppose we have the following table called colors

-- COLOR
-- Red
-- Blue
-- Green
-- Yellow
-- Red
-- Green
-- Red
-- Green
-- Red
-- Black
-- White
-- Red
-- Blue
-- Green
-- Yellow
-- They ask us to create a query that shows us each color only once. For this we will use the following query

-- SELECT DISTINCT color AS unique_color
-- FROM colors
-- Exercise:
-- Try the same learned instruction in the editor to see what the result of the query would be.


SELECT DISTINCT color AS unique_color FROM colors;