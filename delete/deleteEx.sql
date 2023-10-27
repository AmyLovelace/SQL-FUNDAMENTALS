-- Delete a record with a where statement
-- As we observed in the previous exercise, by using the DELETE FROM table_name instruction, we will be eliminating all of the data contained in said table. However, what if our intention is only to delete certain specific rows? To achieve this, we will use the DELETE statement in conjunction with the WHERE clause. This will allow us to specify a condition that will determine which rows will be subject to deletion.

-- For example, if we have a table of products, and we want to delete only those products whose price is equal to 1000, we can use the following query:

DELETE FROM products WHERE price = 1000

-- Exercise
-- Given the users table with the following data

-- ID NAME SURNAME EMAIL PHONE
-- 1 Juan Pérez juanperez@gmail.com 555-1234
-- 2 María García mariagarcia@hotmail.com 555-5678
-- 3 Pedro López pedrolopez@yahoo.com 555-9876
-- 4 Lucía Sánchez luciasanchez@outlook.com 555-5555
-- 5 Jorge Martínez jorgemartinez@gmail.com 555-4321

Delete the user whose id is equal to 2.


DELETE FROM users WHERE id = 2;