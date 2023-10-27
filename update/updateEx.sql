-- Edit all records using where
-- If we want to edit only some rows of our table, we can use UPDATE in conjunction with WHERE. This clause will allow us to filter the rows that will be updated:

UPDATE table_name SET column_name = new_value WHERE condition;

-- Suppose we manage a table called employees that contains information about the employees of a company. Columns include employee_id, name, salary, and department. If we want to increase the salary by 15% only for employees working in the "Sales" department, we could use the UPDATE statement together with WHERE as follows:

UPDATE employees SET salary = salary * 1.15 WHERE department = 'Sales';

-- It is important to be cautious when choosing the filter condition for your rows. This way you make sure you don't accidentally alter the wrong data.

-- Exercise
-- There is a users table with the following data:

-- ID NAME SURNAME EMAIL PHONE
-- 1 Juan Pérez juanperez@gmail.com 555-1234
-- 2 María García mariagarcia@hotmail.com 555-5678
-- 3 Pedro López pedrolopez@yahoo.com 555-9876
-- 4 Lucía López luciasanchez@outlook.com 555-5555
-- 5 Jorge Martínez jorgemartinez@gmail.com 555-4321
-- Assign the phone number 123-456 to all users whose last name is López


UPDATE users SET phone = 123||'-'||456 WHERE last name = 'López';