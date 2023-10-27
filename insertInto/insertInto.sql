-- Add a record to the users table
-- In SQL, you can not only retrieve information from a table, but you can also insert new data.

-- The key statement to perform an insert is INSERT INTO. This statement allows you to specify which table and columns you want to insert the data into. Then, using the VALUES keyword, you provide the corresponding values ​​you want to add.

-- For example, if we have a table called products with columns like id, name and price, you can add a new product to the table using the following syntax:

INSERT INTO products (id, name, price) VALUES (1, 'T-shirt', 2000);

-- For each column in the table, enter the corresponding values ​​in the same order as they are defined in the statement. Use single quotes for text data type values, such as strings, and do not use quotes for numeric values.

-- Exercise
-- Given the users table with the columns id, first name, last name, email and phone, create a new user with the following data:

-- id: 7
-- name: Lucia
-- Last name: Sánchez
-- email: luciasanchez@outlook.com
-- phone: 555-5555

INSERT INTO users (id, first name, last name, email, phone) VALUES (7,'Lucía','Sánchez', 'luciasanchez@outlook.com', 555||'-'||5555);