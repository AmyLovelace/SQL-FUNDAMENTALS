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

-- Selecting unique emails
-- Exercise
-- Given the following table of users

-- MAIL
-- juan.perez@empresa.com
-- maria.gonzalez@empresa.com
-- carlos.rodriguez@empresa.com
-- ana.martinez@empresa.com
-- luis.garcia@empresa.com
-- carmen.lopez@empresa.com
-- jose.hernandez@empresa.com
-- francisco.martin@empresa.com
-- laura.sanchez@empresa.com
-- antonio.diaz@empresa.com
-- juan.perez@empresa.com
-- maria.gonzalez@empresa.com
-- Create a query that shows us each email only once. The column shown must be called single_mail


SELECT DISTINCT email as single_mail FROM users;