-- Having and order
-- Once we have grouped data using the GROUP BY clause, it is common that we need to sort those groups according to some specific criteria. Typically we want to sort the groups based on some aggregate metric, such as sum, count, average, etc. To do this, we use the ORDER BY clause along with the aggregation functions.

-- The order of the clauses in a query should be as follows:

-- ORDER CLAUSE DESCRIPTION
-- 1 SELECT Specifies the columns that should be returned in the result.
-- 2 FROM Specifies the tables from which data will be extracted.
-- 3 WHERE Filters records before any aggregation or grouping.
-- 4 GROUP BY Groups records by one or more columns.
-- 5 HAVING Filter records after aggregation.
-- 6 ORDER BY Orders the returned records by one or more columns.
-- 7 LIMIT Limits the number of records returned.
-- Exercise
-- Given the following sales table, write an SQL query to obtain the products that have been sold in a total quantity greater than 1000, ordered in descending order of quantity sold.

-- PRODUCT QUANTITY
-- At 500
-- B2000
-- C 300
-- D 1500
-- E 700
-- At 600
-- B800
-- C 1200
-- D400
-- E 300
-- The resulting table should have two columns: 'product' and 'total_quantity'.


SELECT product, SUM(quantity) AS total_quantity FROM sales GROUP BY product HAVING SUM(quantity) > 1000 ORDER BY total_quantity DESC;

-- Having and order 2
-- Exercise
-- Suppose you have a table of employees with the following data:

-- EMPLOYEE_ID DEPARTMENT NAME SALARY
-- 1 Juan Sales 3000
-- 2 Maria Marketing 3500
-- 3 Carlos Sales 4000
-- 4 Ana Marketing 2800
-- 5 Luis Sales 3200
-- Your task is to write an SQL query that returns the departments whose average salary is greater than 3000, ordered from highest to lowest average salary. The results should show the department name and average salary, with the column names as Department and Average_Salary respectively.

SELECT department, AVG(salary) as Average_Salary FROM employees GROUP BY department HAVING Average_Salary > 3000 ORDER BY Average_Salary DESC;