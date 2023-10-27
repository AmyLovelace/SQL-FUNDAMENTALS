
-- Subqueries in the FROM
-- Subqueries, also known as "subqueries", allow us to use the results of one query within another query. In the previous exercises we used subqueries within the WHERE clause, but it is also possible to use them within other clauses. In this exercise we will address how to use it within FROM

-- A subquery in the FROM has the following form.

SELECT *
    DESDE (
        SELECT * FROM table1
)
-- In this case it does not seem so useful since we are simply selecting the same thing, but let's see a case where it would be necessary.

-- There is a sales table that has the seller code and the amount of each sale made. They ask us to know how much the total average sold is.

-- EMPLOYEE_ID AMOUNT
-- 1 100
-- 1 150
-- 2 200
-- 2 250
-- 3 300
-- 3 350
-- 4 400
-- For this we first need to add the amounts per seller and then based on these results we take the average of the sales.

SELECT AVG(total_sales) as average_sales
DESDE (
    SELECT employee_id, SUM(amount) as total_sale
    FROM sales
    GROUP BY employee_id
)
-- How did we get to this?
-- If we want to know the averages, first we have to know the totals, for that we need to add per employee.

SELECT employee_id, SUM(amount) as total_sale
FROM sales
GROUP BY employee_id
-- The previous code will generate the following results.

-- EMPLOYEE_ID TOTAL_SALES
-- 1 250
-- 2 450
-- 3 650
-- 4 400
-- Then we take the average of the amounts from this new table.

SELECT AVG(total_sales) as average_sales
DESDE (
    SELECT employee_id, SUM(amount) as total_sale
    FROM sales
    GROUP BY employee_id
)
-- This type of exercise is usually a little more complex to think and write and requires some practice to master, which is why the first exercise will consist of writing the same query. Try doing it without looking at the answer.

-- Exercise
-- You have the sales table that has the seller code and the sales amount. They ask us to know how much the total average sold is. The result must be in the sales_average column

SELECT AVG(total_sales) AS average_sales FROM (
    SELECT employee_id, SUM(amount) as sales_total FROM sales
    GROUP BY employee_id
)