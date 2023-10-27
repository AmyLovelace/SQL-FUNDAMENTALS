-- Introduction to the SQL union clause
-- The UNION operator in SQL is used to combine the result of two or more SELECTs into a single result set.

-- The basic syntax of UNION is as follows:

-- SELECT column1, column2
-- FROM table1
-- UNION SELECT column1, column2
-- FROM table2;
-- The columns that are selected in SELECTs must have the same column names, sequence, and data types.

-- Let's look at an example:

-- Suppose we have two tables: 'Students' and 'Teachers', containing a list of last names in each. We want to create a list that combines the last names from both tables.

-- Students

-- ID NAME SURNAME
-- 1 Juan Rodríguez
-- 2 Maria Sanchez
-- 3 Pedro Castillo
-- Teachers

-- ID NAME SURNAME
-- 1 Alberto Vargas
-- 2 Carla Garrido
-- 3 Diego Mendoza
-- When making the query:

SELECT last name
FROM Students
UNION
SELECT last name
FROM Teachers;
-- It would give us the result:

-- LAST NAME
-- Rodriguez
-- Sanchez
-- Castle
-- Vargas
-- graceful
-- Mendoza
-- Exercise
-- Given the student tables

-- NAME
-- Juan
-- Maria
-- Pedro
-- and teachers

-- NAME
-- Carlos
-- Ana
-- Luis

-- Write an SQL query that uses UNION to join the names of both tables. The resulting column should be called 'names'.

SELECT name as names
FROM Students
UNION
SELECT name
FROM Teachers;