-- Multiple tables: using attribute of the same name
-- In the previous exercise we had the attributes email1 and email2. In this exercise we will learn that it is possible for two different attributes to share the same name, as long as they are located in different tables.

-- To exemplify this we will use the name email in both tables.

-- Users table

-- EMAIL NAME AGE
-- juan.perez@example.com Juan Pérez 30
-- maria.gonzalez@example.com Maria González 25
-- john.doe@example.com John Doe 40
-- test.user@example.com Test User 22
-- contact_data table

-- EMAIL PHONE
-- juan.perez@example.com 555-123-4567
-- maria.gonzalez@example.com 444-987-6543
-- john.doe@example.com 777-555-8888
-- test.user@example.com 111-222-3333
-- juan.perez@example.com 999-888-7777
-- maria.gonzalez@example.com 333-111-0000
-- We will join the data from both tables using JOIN, but this time, when we specify the join point, we will use the name of the table along with the name of the attribute:

SELECT * FROM users JOIN contact_data ON users.email = contact_data.email

-- By doing it this way, SQL can understand which email we are referring to in each situation.

-- Exercise
-- Using what you learned, select all the users along with their notes. Remember that to specify the join key you must use the table name to avoid ambiguity. Observe the results before moving forward.

-- Users table

-- EMAIL NAME AGE
-- juan.perez@example.com Juan Pérez 30
-- maria.gonzalez@example.com Maria González 25
-- john.doe@example.com John Doe 40
-- test.user@example.com Test User 22
-- Notes table

-- EMAIL NOTES
-- juan.perez@example.com 90
-- maria.gonzalez@example.com 100
-- john.doe@example.com 80
-- test.user@example.com 0
-- juan.perez@example.com 100
-- maria.gonzalez@example.com 100


SELECT * FROM users JOIN notes ON users.email = notes.email;

-- Left Join and Right Join
-- Using LEFT JOIN or RIGHT JOIN simply depends on which table you want to name first.

SELECT *
FROM table1
LEFT JOIN table2 ON table1.id = table2.id
-- It is practically the same as:

SELECT *
FROM table2
RIGHT JOIN table1 on table2.id = table1.id
-- LEFT JOIN and RIGHT JOIN are a reflection of each other. However, there is a slight difference when we use them in conjunction with SELECT *, since the attributes of the first table will be displayed first.

-- For example, if we have the following tables:

-- Users table

-- EMAIL NAME AGE
-- juan.perez@example.com Juan Pérez 30
-- maria.gonzalez@example.com Maria González 25
-- francisco@example.com Test User 22
-- Notes table

-- EMAIL NOTES
-- juan.perez@example.com 90
-- maria.gonzalez@example.com 100
-- juan.perez@example.com 100
-- maria.gonzalez@example.com 100
-- emilio@example.com 90
-- With 
SELECT * FROM users left join notes on users.email = notes.email; we would obtain the following:

-- EMAIL NAME AGE EMAIL NOTES
-- juan.perez@example.com Juan Pérez 30 juan.perez@example.com 90
-- juan.perez@example.com Juan Pérez 30 juan.perez@example.com 100
-- maria.gonzalez@example.com Maria González 25 maria.gonzalez@example.com 100
-- maria.gonzalez@example.com Maria González 25 maria.gonzalez@example.com 100
-- francisco@example.com Test User 22 NULL NULL
-- Instead, 
 SELECT * FROM Notes RIGHT JOIN Users ON Notes.email = Users.email; we would get:

-- EMAIL NOTES EMAIL NAME AGE
-- juan.perez@example.com 90 juan.perez@example.com Juan Pérez 30
-- juan.perez@example.com 100 juan.perez@example.com Juan Pérez 30
-- maria.gonzalez@example.com 100 maria.gonzalez@example.com Maria González 25
-- maria.gonzalez@example.com 100 maria.gonzalez@example.com Maria González 25
-- NULL NULL francisco@example.com Test User 22
-- To obtain the results in the same order we can simply specify the order we want.

SELECT users.*, notes.*
FROM Notes
RIGHT JOIN Users ON Notes.email = Users.email;

-- From this exercise it is at your discretion how to solve the problems, either using LEFT JOIN or RIGHT JOIN, but for the answers to be marked correct the attributes must appear in the order that the tables are mentioned, unless otherwise specified. contrary.

-- Exercise
-- Select all records for all products (product table) along with their prices (price table), including products that do not have a price assigned. The tables are related to each other by the product_id column.

SELECT products.*, prices.* FROM products LEFT JOIN prices ON prices.product_id = products.product_id;