-- Get the first students with the best grades
-- In SQL, the combination of the ORDER BY and LIMIT clauses allows us to obtain the maximum value or values ​​of a column in a table.

-- Once we have sorted the records, we can use the LIMIT clause to limit the number of results returned. For example: SELECT * FROM notes ORDER BY note DESC LIMIT 3 will correspond to the three students with the best notes in the 'notes' table.

-- Exercise:
-- There is a score table with the id and score columns. Use what you have learned to get the highest score on the table using ORDER BY and LIMIT


SELECT score FROM scores ORDER BY score DESC LIMIT 1;