-- Introduction to Having
-- In SQL, the GROUP BY clause allows us to group data. If we want to filter the information obtained we will use HAVING.

-- HAVING is used to filter the results of a query that involves aggregate functions. In other words, HAVING allows you to apply filter conditions to the results of functions such as COUNT, MAX, MIN, SUM, and AVG after the data has been grouped with the GROUP BY clause.

-- For example, if we have the following enrollment table

-- REGISTRATION DATE
-- 2022-01-15
-- 2022-01-20
-- 2022-02-10
-- 2022-02-05
-- 2022-03-25
-- 2022-03-18
-- 2022-04-22
-- 2022-04-09
-- 2022-05-30
-- 2022-05-11
-- 2022-06-19
-- 2022-06-29
-- 2022-07-12
-- 2022-07-21
-- 2022-08-08
-- 2022-08-17
-- 2022-09-13
-- 2022-09-26
-- 2022-10-14
-- 2022-10-28
-- They ask us to create a report showing the months and the number of registered people, but only where there are 2 or more registered people.

-- SELECT strftime("%m", Registration_Date) AS month, COUNT(Registration_Date) user_number
-- FROM registrations
-- GROUP BY strftime("%m", Registration_Date)
-- HAVING number_users >= 2
-- In this query, we first use GROUP BY to group by month. Then, we use the COUNT(Enrollment_Date) aggregation function to count the number of enrollees. After we have grouped the data and calculated the total enrollees, we apply the HAVING clause to filter the results.

-- Exercise
-- Create a report showing the months and the number of registered people but only where there is 1 registered. The columns should be named month and number_users respectively.


SELECT strftime("%m", Registration_Date) AS month , COUNT(Registration_Date) AS number_users FROM registrations GROUP BY 1 HAVING number_users = 1;