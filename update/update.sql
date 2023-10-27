-- Edit records
-- The UPDATE clause is used to make changes to data that already exists in a database table. Its basic structure is the following:

UPDATE table_name SET column_name = new_value

-- UPDATE: This keyword starts the update statement.

-- table_name: It is the name of the table in which you want to make the modifications.

-- SET: Indicates that you are going to set new values ​​in the specified columns.

-- column_name: Corresponds to the name of the column you want to modify.

-- new_value: Represents the value you want to assign to the specified column.

-- For example, suppose we have a table called sales that contains information about the sales made in a store. This table has several columns, including sales_id, product, quantity, and total. If we want to increase the total of all sales recorded in the table by 10%, we can do it as follows:

UPDATE sales SET total = total * 1.10;

-- In this case, the UPDATE statement will affect all rows in the sales table, since we have not used the WHERE clause to set a filter condition. The SET indicates that we want to modify the total column and are assigning it a new value calculated by multiplying the current value by 1.10 (which represents a 10% increase).

-- Exercise
-- There is a users table with the following data:

-- ID NAME SURNAME EMAIL PHONE
-- 1 Juan Pérez juanperez@gmail.com 555-1234
-- 2 María García mariagarcia@hotmail.com 555-5678
-- 3 Pedro López pedrolopez@yahoo.com 555-9876
-- 4 Lucía Sánchez luciasanchez@outlook.com 555-5555
-- 5 Jorge Martínez jorgemartinez@gmail.com 555-4321
-- Edit the phone number of the users in the table so that all of them have the number 123-45678


UPDATE users SET phone = 123||'-'||45678;