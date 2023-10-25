-- Getting today's date
-- With the DATE() function we can obtain today's date. For example, we can use it in the WHERE clause to get all of today's records.

-- SELECT * FROM users WHERE registration_date = DATE();

-- It is also possible to explicitly indicate to the function that the desired date is today. Example:

-- SELECT * FROM users WHERE registration_date = DATE('now');

-- Everything we have learned about SQL so far works in all database engines such as SQLITE, PostgreSQL or MySQL. This function is a special case since it receives different names in each of the engines. For example, in MySQL CURDATE() is used, and in Microsoft SQL Server GETDATE() is used. When searching for documentation it is important to make it clear which engine is being used. In this interactive tutorial we are using SQLite.

-- Exercise:
-- There is a table called tasks with the following columns: "id" (unique identifier), "descripcion" (description of the task) and "fecha_limite" (deadline date to complete the task).

-- Get the description of all tasks that have a deadline equal to the current date.


SELECT description FROM tasks WHERE deadline_date = DATE('now');