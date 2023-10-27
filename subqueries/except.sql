-- The Except operator
-- The EXCEPT operator in SQL is used to return all rows in the first query that are not present in the second query. In other words, EXCEPT returns only the rows, which are part of the first query but not the second query.

-- For example, if we have two tables, 'Table1' and 'Table2', they contain the following data:

-- Table 1

-- ID NAME
-- 1 John
-- 2 Mary
-- 3 Charles
-- Table2

-- ID NAME
-- 1 John
-- 4 Anna
-- 5 Louis
-- We can use EXCEPT to find the names that are in 'Table1' but not in 'Table2' with the following query:

SELECT name FROM Table1 EXCEPT SELECT name FROM Table2;

-- This would result in:

-- NAME
-- Maria
-- Carlos
-- Exercise
-- Given the following tables, 'employees' and 'managers', they contain the following data:

-- employees

-- ID NAME
-- 1 John
-- 2 Mary
-- 3 Charles
-- 4 Anna
-- 5 Louis
-- managers

-- ID NAME
-- 1 John
-- 2 Mary
-- Create a query that displays the names of non-manager employees.


SELECT name FROM employees EXCEPT SELECT name FROM managers;